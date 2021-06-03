VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.filter_sensitive_data('<DONT_SHARE_MY_THEMOVIESDB_KEY>') { ENV['themoviesdb_key'] }
  config.configure_rspec_metadata!
  config.default_cassette_options = {
    re_record_interval: 7.days
  }
end