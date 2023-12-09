
After do
  page.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.delete_cookie('sesion')
  Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before do
  page.driver.browser.manage.window.maximize
  visit 'https://demo.guru99.com/test/newtours/index.php'
end