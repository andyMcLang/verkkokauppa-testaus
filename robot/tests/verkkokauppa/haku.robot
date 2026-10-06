*** Settings ***
Library    Browser

*** Variables ***
${BASE_URL}    https://www.verkkokauppa.com/fi/etusivu
${SEARCH_QUERY}    Apple 20 W USB-C laturi
${PRODUCT_NAME}    Apple 20 W USB-C laturi (MD3J4)

*** Test Cases ***
TC-01 Etsi tuote ja avaa sen tuotesivu
	[Documentation]    Varmistaa, että tuotteen voi löytää haulla ja avata oikean tuotesivun.
	[Tags]    smoke    verkkokauppa
	[Teardown]    Close Browser
	Avaa verkkokaupan etusivu
	Fill Text    role=combobox[name="Hae kaupasta"]    ${SEARCH_QUERY}
	Press Keys    role=combobox[name="Hae kaupasta"]    Enter
	Wait For Elements State    role=heading[name*="tulosta haulla"]    visible    timeout=15 s
	${search_heading}=    Get Text    role=heading[name*="tulosta haulla"]
	Should Contain    ${search_heading}    ${SEARCH_QUERY}
	Wait For Elements State    role=link[name="${PRODUCT_NAME}"]    visible    timeout=15 s
	Click    role=link[name="${PRODUCT_NAME}"]
	Wait For Elements State    role=heading[name="${PRODUCT_NAME}"]    visible    timeout=15 s
	${product_heading}=    Get Text    role=heading[name="${PRODUCT_NAME}"]
	Should Be Equal    ${product_heading}    ${PRODUCT_NAME}

TC-02 Tyhjä hakukenttä ei käynnistä hakua
	[Documentation]    Varmistaa, että hakua ei voi lähettää tyhjällä hakukentällä.
	[Tags]    verkkokauppa    negative
	[Teardown]    Close Browser
	Avaa verkkokaupan etusivu
	${search_value}=    Get Property    role=combobox[name="Hae kaupasta"]    value
	Should Be Equal    ${search_value}    ${EMPTY}
	Get Element States    role=button[name="Etsi"]    contains    disabled

*** Keywords ***
Avaa verkkokaupan etusivu
	New Browser    chromium    channel=chrome    headless=True
	New Page    ${BASE_URL}
	Valitse vain välttämättömät evästeet jos kysytään

Valitse vain välttämättömät evästeet jos kysytään
	${choice_count}=    Get Element Count    role=button[name*="Vain välttämättömät"]
	IF    ${choice_count} > 0
		Click    role=button[name*="Vain välttämättömät"]
	END