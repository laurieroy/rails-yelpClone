CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials.dig(:aws, :access_key_id),                        # required unless using use_iam_profile
    aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),                        # required unless using use_iam_profile
    use_iam_profile:       true,                         # optional, defaults to false
  }
	config.fog_directory  = 'yelpclone-lr'  
  # add in region if switch from default
  
	# require 'carrierwave/orm/activerecord'
	# required
  # For an application which utilizes multiple servers but does not need caches persisted across requests,
  # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
  # config.cache_storage = :file
end