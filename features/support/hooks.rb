Before do
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('start-maximized')
    #options.add_argument('headless')
    @driver = Selenium::WebDriver.for :chrome, options: options
    @wait = Selenium::WebDriver::Wait.new(:timout => 10)

    @base = BasePage.new(@driver)
    @login = LoginPage.new(@driver)
end

After do
    @driver.quit
end