require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
require 'yaml'

RSpec.configure do |config|
  config.before(:each) do
    chrome_options = Selenium::WebDriver::Chrome::Options.new
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--disable-gpu') 
    @driver = Selenium::WebDriver.for :chrome, :options => chrome_options
    @driver.manage.window.maximize
    env_data = YAML.load_file('config/env.yml')
    @driver.get(env_data[:url])
  end

  config.after(:each) do
    @driver.quit
  end
end
