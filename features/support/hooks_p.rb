Before do
    page.driver.browser.manage.window.maximize
    visit 'https://demo.guru99.com/test/newtours/index.php'
end

After do
    page.driver.browser.manage.delete_cookie('sesion')
end
