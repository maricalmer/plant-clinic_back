class Services::ImageUrlGenerator
  def initialize(attributes = {})
    @id = attributes[:id]
    @client = attributes[:client]
  end

  def assign_image_url
    @client.update image_url: create_image_url(@id)
  end

  def to_param
    image_url
  end

  private

  def create_image_url(id)
    return "https://res.cloudinary.com/#{ENV['CLOUDINARY_CLOUD_NAME']}/image/upload/image-#{id}"
  end
end
