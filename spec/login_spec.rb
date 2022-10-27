require 'spec_helper'
require_relative '../page_objects/login_page'
require 'yaml'
require 'selenium-webdriver'

RSpec.describe 'Login test' do
  it 'Login in abv.bg' do
    login_page = LoginPage.new(@driver)
    creds_data = YAML.load_file('config/creds.yml')
    login_page.username_field(creds_data[:username])
    login_page.password_field(creds_data[:password])
    login_page.login_btn
  end
end
