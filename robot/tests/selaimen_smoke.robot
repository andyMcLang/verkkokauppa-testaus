*** Settings ***
Library    Browser

*** Test Cases ***
Tarkista SauceDemon etusivu
	[Documentation]    Avaa SauceDemon koneelle asennetussa Chromessa ja tarkistaa sivun otsikon.
	[Teardown]    Close Browser
	New Browser    chromium    channel=chrome    headless=True
	New Page    https://www.saucedemo.com/
	${page_title}=    Get Title
	Should Be Equal    ${page_title}    Swag Labs

TC-01 Kirjaudu sisään standard_userilla
	[Documentation]    Varmistaa, että standard_user pääsee kirjautumisen jälkeen tuotelistaukseen.
	[Teardown]    Close Browser
	New Browser    chromium    channel=chrome    headless=True
	New Page    https://www.saucedemo.com/
	Fill Text    id=user-name    standard_user
	Fill Text    id=password    secret_sauce
	Click    id=login-button
	${current_url}=    Get Url
	Should Be Equal    ${current_url}    https://www.saucedemo.com/inventory.html
