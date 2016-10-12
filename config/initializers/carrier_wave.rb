=begin
FYI: The Amazon Web Services Access Key ID and Secret Access key below are not real. 
What you see is a string of mumbo jumbo that I used to overwrite my real credentials after 
testing the app in production and deploying in Heroku. 

=end

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AYHGFHDAGRFJ4VGWSDQHQ'],
      :aws_secret_access_key => ENV['asdSFDdadaDAWEadaEAQWEqwewqeQWewerGJTYhfDGe']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end