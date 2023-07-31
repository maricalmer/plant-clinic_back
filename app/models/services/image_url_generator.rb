class Services::ImageUrlGenerator
  def initialize(attributes = {})
    @slug = attributes[:slug]
    @client = attributes[:client]
  end

  def assign_image_url
    @client.update image_url: create_image_url(@slug)
  end

  def to_param
    image_url
  end

  private

  def create_image_url(slug)
    puts "variable: #{ENV['CLOUDINARY_CLOUD_NAME']}"
    return "https://res.cloudinary.com/#{ENV['CLOUDINARY_CLOUD_NAME']}/image/upload/#{slug}.png"
  end
end
