PGM::Application.configure do
    # Settings specified here will take precedence over those in config/application.rb

    # Code is not reloaded between requests
    config.cache_classes = true

    config.eager_load = true

    # Full error reports are disabled and caching is turned on
    config.consider_all_requests_local       = false
    config.action_controller.perform_caching = true

    # Disable Rails's static asset server (Apache or nginx will already do this)
    # config.serve_static_files = STAGING
    config.serve_static_files = true

    # Enable serving of images, stylesheets, and JavaScripts from an asset server
    # config.action_controller.asset_host = "https://static.#{ORG::DOMAIN}" unless STAGING

    # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
    config.assets.precompile += %w( *.js )
    config.assets.precompile += %w( *.css )

    # Compress JavaScripts and CSS
    config.assets.compress = true

    # Fallback to assets pipeline if a precompiled asset is missed
    config.assets.compile = true

    # Generate digests for assets URLs
    config.assets.digest = true

    # Defaults to Rails.root.join("public/assets")
    # config.assets.manifest = YOUR_PATH

    # Specifies the header that your server uses for sending files
    # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
    # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

    # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
    # config.force_ssl = true

    # See everything in the log (default is :info)
    # config.log_level = :debug

    # Use a different logger for distributed setups
    # config.logger = SyslogLogger.new

    # Use a different cache store in production
    # config.cache_store = :mem_cache_store

    # Disable delivery errors, bad email addresses will be ignored
    # config.action_mailer.raise_delivery_errors = false

    # Enable threaded mode
    # config.threadsafe!

    # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
    # the I18n.default_locale when a translation can not be found)
    config.i18n.fallbacks = true

    # Send deprecation notices to registered listeners
    config.active_support.deprecation = :notify
end
