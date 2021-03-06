require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.credentials.config[:a
s][:access_key_id],
    aws_secret_access_key: Rails.application.credentials.config[:a
      s][:secret_access_key],
    region: 'ap-northeast-1'
  }

  config.fog_directory  = ENV['FOG_DIRECTORY']
  config.cache_storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end