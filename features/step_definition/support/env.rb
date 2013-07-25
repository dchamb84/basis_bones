require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'active_support/dependencies'
require 'stomp'
require 'pry'

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))
ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'config'))

# Unsetting the proxy variables as selenium wont start if they are set
#ENV[ 'HTTP_PROXY' ] = ENV[ 'HTTPS_PROXY' ] = ENV[ 'FTP_PROXY' ] = ENV[ 'ALL_PROXY' ] = nil



#setup config for browser
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.run_server = false
  config.default_selector = :css
  config.default_wait_time = Helpers::Config['default_wait_time']
  config.ignore_hidden_elements = false
  config.visible_text_only = false
  config.match = :first
  config.exact_options = true
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

module StuffWeWantAvailable
  def wait_for_ajax
    sleep 0.3
    Timeout.timeout(30) {sleep(0.1) until page.evaluate_script("jQuery.active") == 0 }
    sleep 0.3
  end

  def disable_proxy
  end

  def enable_proxy
  end
end

World(Capybara)
World(StuffWeWantAvailable)