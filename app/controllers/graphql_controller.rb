class GraphqlController < ApplicationController
  # If accessing from outside this domain, nullify the session
  # This allows for outside API access while preventing CSRF attacks,
  # but you'll have to authenticate your user separately

  def execute
    puts "PARAMS:"
    puts params
    variables = prepare_variables(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      session: session,
      current_user: current_user
    }
    puts "CONTEXT FROM GRAPHQL CONTROLLER: #{context}"
    puts "CURRENT_USER FROM GRAPHQL CONTROLLER: #{context[:current_user]}"
    puts "SESSION FROM GRAPHQL CONTROLLER: #{session}"
    puts "SESSION_TOKEN FROM GRAPHQL CONTROLLER (execute): #{context[:session][:token]}"
    result = PlantClinicSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  rescue StandardError => e
    raise e unless Rails.env.development?
    handle_error_in_development(e)
  end

  private

  def current_user
    puts "SESSION_TOKEN FROM GRAPHQL CONTROLLER (current_user): #{session[:token]}"
    return unless session[:token]

    AuthToken.user_from_token(session[:token])

  rescue ActiveSupport::MessageVerifier::InvalidSignature
    nil
  end

  def prepare_variables(variables_param)
    case variables_param
    when String
      if variables_param.present?
        JSON.parse(variables_param) || {}
      else
        {}
      end
    when Hash
      variables_param
    when ActionController::Parameters
      variables_param.to_unsafe_hash
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{variables_param}"
    end
  end

  def handle_error_in_development(e)
    logger.error e.message
    logger.error e.backtrace.join("\n")

    render json: { errors: [{ message: e.message, backtrace: e.backtrace }], data: {} }, status: 500
  end
end

# class GraphqlController < ApplicationController
#   def execute
#     result = PlantClinicSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
#     render json: result
#   rescue StandardError => e
#     raise e unless Rails.env.development?

#     handle_error_in_development e
#   end

#   private

#   def query
#     params[:query]
#   end

#   def variables
#     ensure_hash params[:variables]
#   end

#   def operation_name
#     params[:operationName]
#   end

#   def context
#     {
#       session: session,
#       current_user: AuthToken.user_from_token(session[:token])
#     }
#   end

#   def ensure_hash(ambiguous_param)
#     case ambiguous_param
#     when String
#       if ambiguous_param.present?
#         ensure_hash(JSON.parse(ambiguous_param))
#       else
#         {}
#       end
#     when Hash, ActionController::Parameters
#       ambiguous_param
#     when nil
#       {}
#     else
#       raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
#     end
#   end

#   def handle_error_in_development(error)
#     logger.error error.message
#     logger.error error.backtrace.join("\n")

#     render json: { error: { message: error.message, backtrace: error.backtrace }, data: {} }, status: 500
#   end
# end
