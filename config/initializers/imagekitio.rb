ImageKitIo.configure do |config|
  if Rails.env.development? || Rails.env.production?
    config.public_key = 'public_eInAT404MVNpMKyc+zehqaVtmN0='
    config.private_key = 'private_Oh+gNMu+S3YH64ZDnI22XNg9tm0='
    config.url_endpoint = 'https://ik.imagekit.io/ezcar' # https://ik.imagekit.io/your_imagekit_id
  end
  config.service = :active_storage
  # config.constants.MISSING_PRIVATE_KEY = 'custom error message'
end