# frozen_string_literal: true

require 'selenium-webdriver'
require 'webdrivers'
require 'yaml'
require 'test/unit/assertions'
include RSpec::Expectations

RSpec.configure do |config|
  config.before(:context) do
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    chrome_options = Selenium::WebDriver::Chrome::Options.new
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--disable-gpu')
    chrome_options.add_argument('--disable-dev-shm-usage')
    @driver = Selenium::WebDriver.for :chrome, :options => chrome_options
    @driver.manage.window.maximize
    env_data = YAML.load_file('config/env.yml')
    begin
      @driver.get(env_data[:base_url])
    rescue => RSpec::Core::MultipleExceptionError
      @driver.get(env_data[:local_url])
    end
  end
  config.after(:each) do |example|
    if example.exception
      @driver.save_screenshot("screenshots/scr-#{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png")
      end
  end
  config.after(:context) do
    @driver.quit
  end
end
