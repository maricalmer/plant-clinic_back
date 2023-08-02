module Mutations
  class SignInUser < BaseMutation
    null true

    argument :credentials, Types::AuthProviderCredentialsInput, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(credentials: nil)
      puts "RESOLVE METHOD SIGN IN MUTATION:"
      return unless credentials
      puts "CREDENTIALS FROM SIGN IN MUTATION:"
      puts credentials
      user = User.find_by email: credentials[:email]
      puts "USER FROM SIGN IN MUTATION:"
      puts user
      return unless user

      return unless user.authenticate(credentials[:password])

      token = AuthToken.token_for_user(user)
      puts "TOKEN FROM SIGN IN MUTATION:"
      puts token

      context[:session][:token] = token
      $token = token

      { user: user, token: token }
    end
  end
end
