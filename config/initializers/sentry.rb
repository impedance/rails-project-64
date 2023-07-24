Sentry.init do |config|
  config.dsn = 'https://1c3aadd276cb4830a1f609a481ae6fc1@o4505583598239744.ingest.sentry.io/4505583617441792'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end
