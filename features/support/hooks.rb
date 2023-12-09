require_relative '../POM_P/page_objects.rb'
Before do
  page.driver.browser.manage.window.maximize
  visit 'https://demo.guru99.com/test/newtours/index.php'
end

Before do |scenario|
  @page=Page.new
end

After do
  page.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.delete_cookie('sesion')
  Capybara.current_session.driver.quit
end
