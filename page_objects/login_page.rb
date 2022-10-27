class LoginPage
  USERNAME = { name: 'username' }.freeze
  PASSWORD = { name: 'password' }.freeze
  LOGIN_BTN = { id: 'loginBut' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def username_field(value)
    @driver.find_element(USERNAME).send_keys(value)
  end

  def password_field(value)
    @driver.find_element(PASSWORD).send_keys(value)
  end

  def login_btn
    @driver.find_element(LOGIN_BTN).click
  end
end
