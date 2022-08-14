CarrierWave.configure do |config|
  config.root = '/opt/storage_site'
  config.cache_storage = :file
  config.sftp_host = '192.168.15.5'
  config.sftp_user = 'vagrant'
  config.sftp_folder = '/opt/storage_site'
  #config.sftp_url = "192.168.15.3"
  config.sftp_options = {
    :password => 'vagrant',
    :port     => 22
  }

end