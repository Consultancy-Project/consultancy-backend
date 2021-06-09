# VCR.configure do |config|
#   config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
#   config.hook_into :webmock
#   config.filter_sensitive_data('<token>') { ENV['token'] }
#   config.filter_sensitive_data('<twitter_token>') { ENV['twitter_token'] }
#   config.configure_rspec_metadata!
#   config.default_cassette_options = { re_record_interval: 7.days }
#   config.allow_http_connections_when_no_cassette = true
# end
