# Aloittelijan ohje: verkkokaupan testin rakentaminen ja raportointi

Tässä ohjeessa rakennat yhden verkkokaupan testin alusta raporttiin. Etene tässä järjestyksessä: ymmärrä käyttäjän tarve, rajaa riski, päätä mitä todennat, kirjoita testitapaus ja automatisoi vasta sitten.

Ohje soveltaa 1-2-1-keskustelun keskeisiä pointteja:

- Testaajan tärkein työ on ymmärtää mitä testataan ja miksi. Robot Framework on väline, ei testauksen tavoite.
- Tunnista ensin testattava asia eli verifiointipiste ja se näyttö, jolla voit sanoa asian toimivan tai epäonnistuvan.
- Aloita suunnitelluista ja toistettavista testeistä. Kokeilevaa testausta voi käyttää niiden lisäksi, kun tunnet toiminnallisuuden ja osaat kohdistaa kokeilun riskeihin.
- Valitse selainkirjasto ja muut tekniikat projektin käytäntöjen sekä testattavan sivun mukaan. Browser Library on tämän harjoituksen nykyinen työkalu, ei ainoa oikea vaihtoehto.

Harjoittele aluksi harmittomalla käyttäjäpolulla, kuten tuotteen etsimisellä. Älä tee oikeaa tilausta tai maksua. Käytä vain testitietoja, äläkä syötä oikeita henkilötietoja.

## 1. Valitse pieni käyttäjäpolku

Kirjoita ensin yhdellä lauseella, mitä käyttäjä yrittää saada aikaan.

**Esimerkki:** Käyttäjä etsii verkkokaupasta tuotetta ja avaa hakutuloksista tuotteen sivun.

Kysy itseltäsi:

1. Mikä on käyttäjän tavoite?
2. Mikä voisi mennä pieleen ja haitata käyttäjää eniten?
3. Mikä on pienin rajaus, jolla voin tarkistaa tämän tavoitteen?

Kirjaa harjoituksen rajaus tiedostoon [suunnitelma.md](suunnitelma.md). Aluksi voit rajata testin yhteen selaimeen, yhteen hakusanaan ja yhteen käyttäjäpolkuun. Kerro myös, mitä et testaa, esimerkiksi ostamista, maksamista, mobiilinäkymää tai muita selaimia.

## 2. Määritä verifiointipisteet

Verifiointipiste on konkreettinen asia, jonka toimivuudesta haluat saada näyttöä. Vältä epämääräistä tavoitetta kuten "testaa hakua". Kirjoita, mikä käyttäjälle näkyvä tulos todistaa toiminnan onnistuneen.

| Tunnus | Tarkistettava asia | Miksi sillä on väliä |
| --- | --- | --- |
| V1 | Hakusanalla tehty haku näyttää hakua vastaavia tuotteita. | Käyttäjä löytää etsimänsä tuotteen. |
| V2 | Hakutuloksesta avattu tuotesivu vastaa valittua tuotetta. | Käyttäjä ei päädy eri tuotteeseen kuin valitsi. |

Lisää omat pisteesi verkkokaupan [testaussuunnitelmaan](suunnitelma.md). Pidä ne havaittavina: esimerkiksi sivun otsikko, tuotteen nimi, tulosten määrä tai onnistumisviesti. Päätä myös, mikä olisi epäonnistumisen merkki.

## 3. Päätä testin rajaus ja lähtötilanne

Kirjaa suunnitelmaan testiin vaikuttavat olosuhteet. Aloittelijan ensimmäiseen testiin riittää yleensä:

- selain ja laite, esimerkiksi Chrome Windows-tietokoneella
- sivuston osoite ja käyttöliittymän kieli
- selaimen lähtötila, esimerkiksi uusi istunto
- testidata, kuten hakusana
- sivuston mahdollinen evästeilmoitus tai muu alkutilan valinta
- testattavat ja tämän testin ulkopuolelle jätettävät asiat

Julkinen verkkokauppa voi muuttua testien välillä. Älä oleta, että tuotteet, hinnat, saatavuus tai hakutulosten järjestys pysyvät samoina. Valitse tarkistukset, jotka vastaavat testin tavoitetta, ja vältä tarpeettoman tarkkoja oletuksia muuttuvasta sisällöstä.

## 4. Kirjoita testitapaus ennen automaatiota

Täytä [testitapaukset.md](testitapaukset.md). Anna tapaukselle tunnus, kuten `TC-01`, ja liitä siihen verifiointipisteet. Kirjaa lähtöehdot, testidata, käyttäjän toiminnot sekä jokaisen tärkeän toiminnon odotettu tulos.

### Esimerkki: TC-01 – Etsi tuote ja avaa sen tuotesivu

**Verifiointipisteet:** V1, V2  
**Prioriteetti:** Korkea, jos haku on keskeinen tapa löytää tuotteita  
**Esiehdot:** Verkkokaupan etusivu on avattu; testissä käytetään uutta selainistuntoa.  
**Testidata:** Yksilöivä hakusana, jonka tiedetään vastaavan ainakin yhtä tuotetta.

| # | Toiminto | Odotettu tulos |
| --- | --- | --- |
| 1 | Avaa verkkokaupan etusivu. | Etusivu latautuu eikä sivu näytä lataus- tai virheilmoitusta. |
| 2 | Etsi hakukenttä ja syötä testihakusana. | Hakukenttä hyväksyy hakusanan. |
| 3 | Suorita haku. | Hakutulokset näytetään hakusanalle. |
| 4 | Tarkista hakutulos ja avaa yksi tulos. | Tuotesivun tuotteen nimi vastaa valittua hakutulosta. |

Jos et tiedä, mitä sivun pitäisi näyttää, selvitä odotettu tulos ennen automaatiota. Älä muuta odotettua tulosta vain siksi, että testi saadaan menemään läpi.

## 5. Valmistele automaatiotesti

Tämän projektin selainautomaation esimerkit käyttävät Robot Frameworkin Browser Librarya. Verkkokaupan omat testit kuuluvat kansioon `robot/tests/verkkokauppa/`. Luo sinne esimerkiksi tiedosto `haku.robot`.

Ennen koodia tarkista projektin nykyiset käytännöt ja riippuvuudet. Jos testattavan sivun käyttö ei onnistu Browser Librarylla luotettavasti, selvitä tiimin kanssa, sopiiko toinen kirjasto tai oma avainsana paremmin. Älä käytä aikaa työkalun väkisin sovittamiseen.

## 6. Kirjoita ensin pieni toimiva testirunko

Alla oleva smoke-esimerkki tarkistaa vain, että Verkkokauppa.comin etusivu avautuu ja sivun otsikossa esiintyy sivuston nimi. Se ei vielä testaa hakua. Seuraa projektin tapaa käyttää sisennystä ja selainasetuksia.

```robotframework
*** Settings ***
Library    Browser

*** Variables ***
${BASE_URL}    https://www.verkkokauppa.com/

*** Test Cases ***
Verkkokaupan etusivu avautuu
    [Documentation]    Varmistaa, että verkkokaupan etusivu avautuu.
    [Tags]    smoke
    [Teardown]    Close Browser
    New Browser    chromium    headless=True
    New Page    ${BASE_URL}
    ${page_title}=    Get Title
    Should Contain    ${page_title}    Verkkokauppa.com
```

Tarkista ensimmäisellä ajolla, että sivuston tämänhetkinen otsikko todella sisältää `Verkkokauppa.com`. Jos otsikko muuttuu, valitse testin tavoitteeseen sopiva vakaa tarkistus; älä kopioi vanhaa otsikkoa sokkona.

## 7. Lisää käyttäjäpolku pienissä osissa

Laajenna testi vasta, kun sivun avauksen tarkistus toimii.

1. Avaa sivu selaimessa ja selvitä hakukentän ja hakutuloksen tunnistettava ominaisuus. Suosi saavutettavaa nimeä tai roolia, jos sivusto tarjoaa sellaisen. Vältä sijaintiin perustuvia hauraita valitsimia kuten "kolmas painike".
2. Lisää testiin hakusanan syöttö ja haun käynnistäminen.
3. Lisää odotus sille, että hakutulos on näkyvissä. Suosi odotusta tietylle elementille kiinteän pitkän viiveen sijaan.
4. Tarkista V1:een liittyvä näkyvä tulos, kuten hakusanaa vastaavan tuotteen nimi.
5. Avaa tulos ja tarkista V2:een liittyvä tieto tuotesivulta.
6. Aja testi jokaisen lisäyksen jälkeen ja korjaa ongelma siinä vaiheessa, missä se syntyy.

Browser Libraryn tarkat avainsanat ja valitsimet riippuvat asennetusta versiosta ja sivun rakenteesta. Tarkista käytettävissä olevat avainsanat projektin omasta ympäristöstä ja pidä testi aluksi yhdessä tiedostossa. Nosta toistuvat, ymmärrettävät vaiheet uudelleenkäytettäviksi avainsanoiksi vasta, kun niistä on oikeasti hyötyä.

Pidä testin tarkistukset sidottuina verifiointipisteisiin. Testin ei tarvitse tarkistaa kaikkea, mitä sivulla sattuu näkymään.

## 8. Aja testi ja tutki tulos

Aja verkkokaupan testihakemisto projektin virtuaaliympäristössä ja tallenna tulokset `results/`-kansioon. Tässä Windows-projektissa voit käyttää suoraan virtuaaliympäristön Pythonia:

```powershell
.venv\Scripts\python.exe -m robot --outputdir results robot/tests/verkkokauppa/
```

RobotCode-ajossa käytä projektin virtuaaliympäristöä ja anna suite-hakemisto ajopoluksi:

```powershell
.venv\Scripts\python.exe -m robotcode.cli robot --outputdir results robot/tests/verkkokauppa/
```

Yksittäisen testin longnamen saat komennolla `.venv\Scripts\python.exe -m robotcode.cli discover tests robot/tests/verkkokauppa/`. Rajaa ajo longnamella ja anna edelleen suite-hakemisto poluksi:

```powershell
.venv\Scripts\python.exe -m robotcode.cli robot -bl "Verkkokauppa.Haku.TC-01 Etsi tuote ja avaa sen tuotesivu" robot/tests/verkkokauppa/
```

Älä anna yksittäistä `.robot`-tiedostoa ajopoluksi, koska silloin ylemmän suite-tason alustukset voivat jäädä pois.

Ajon jälkeen tarkista:

- `results/report.html`: yhteenveto testien läpäisyistä ja hylkäyksistä
- `results/log.html`: testin vaiheet ja se kohta, jossa mahdollinen virhe tapahtui
- `results/output.xml`: koneellisesti luettava ajotulos esimerkiksi jatkokäsittelyyn

Älä päättele pelkästä punaisesta testistä, että verkkokaupassa on virhe. Lue ensin lokista, epäonnistuiko itse odotettu toiminta vai esimerkiksi selaimen käynnistys, valitsin, verkko tai testidata.

## 9. Kirjaa epäonnistuminen havaintona

Kun odotettu tulos ei toteudu:

1. Toista tilanne tarvittaessa selaimessa ja tarkista, pystytkö toistamaan sen.
2. Tallenna havaintotunnus, kuten `H-01`, sekä liittyvä testitapaus `TC-01` ja verifiointipiste `V1`.
3. Kirjaa testausympäristö, alkutila, käytetty testidata ja tarkat toistovaiheet.
4. Kuvaa odotettu ja toteutunut tulos erikseen. Kerro, miten havainto vaikuttaa käyttäjään.
5. Liitä todiste, esimerkiksi kuvakaappaus ja Robotin `log.html`-tiedosto tai ajokohta. Älä liitä salasanoja, maksutietoja tai oikeita henkilötietoja.
6. Erota tuotevirhe testin tai ympäristön ongelmasta. Jos syy on epäselvä, merkitse se selvittämättömäksi äläkä esitä oletusta faktana.

**Havaintoesimerkki:**

| Kenttä | Esimerkki |
| --- | --- |
| Tunnus | H-01 |
| Testitapaus / piste | TC-01 / V1 |
| Otsikko | Hakutuloksia ei näytetä toimivalla hakusanalla |
| Ympäristö | Chrome, Windows, testauspäivä ja mahdollinen sivuston versiotieto |
| Toistovaiheet | Avaa etusivu, hae sovitulla testisanalla, tarkista tulosalue |
| Odotettu / toteutunut | Hakua vastaavat tuotteet näkyvät / tulosalue jää tyhjäksi |
| Vaikutus käyttäjälle | Käyttäjä ei löydä tuotetta haulla |
| Todiste | Kuvakaappaus ja viite Robot-lokiin |

Älä arvaa vakavuutta. Arvioi vaikutusta käyttäjään ja toistettavuutta, ja käytä projektin sovittua vakavuusluokitusta.

## 10. Laadi testausraportti

Täydennä [raportti.md](raportti.md) jokaisen ajon jälkeen. Raportoi toteutunut ajo, älä vain testisuunnitelmaa.

1. Merkitse ajankohta, testattu sivusto tai versio, selain, käyttöjärjestelmä ja suoritustapa.
2. Kerro lyhyesti, mikä käyttäjäpolku ja mitkä verifiointipisteet testattiin.
3. Laske testitapausten määrät: läpi, hylätty, ohitettu ja suorittamatta. Älä laske manuaalista ja automaattista ajoa samaksi suoritukseksi.
4. Linkitä jokainen hylätty tapaus havaintotunnukseen. Jos havaintoja ei löytynyt, sano niin ja kerro testauksen rajaus.
5. Kirjaa, mitä ei testattu ja miksi.
6. Anna rajattu arvio: mitä tulos kertoo testatusta polusta ja mitä siitä ei voi päätellä. Suosittele seuraavaa järkevää testausta.
7. Linkitä tai toimita `report.html` ja tarvittaessa `log.html` sovitussa paikassa. Älä väitä, ettei virheitä ole olemassa; kerro vain, ettei niitä löytynyt tässä rajatussa ajossa.

Raportin voi tiivistää näin:

> Ajo [päivä ja ympäristö] tarkisti tuotteen haun ja tuotesivun avaamisen (TC-01, V1–V2). [X] tapausta läpäisi, [Y] hylättiin ja [Z] jäi suorittamatta. Havainto [H-01] koskee [käyttäjävaikutus]. Tulos kertoo vain tästä rajatusta polusta; [pois rajatut asiat] jäivät testaamatta. Suositus: [seuraava askel].

## 11. Tee ensin suunnitelmallisesti, sitten kokeile

Kun peruspolku on vakaa, käytä erillinen aikarajattu kokeilevan testauksen jakso. Valitse etukäteen riski, jota tutkit, esimerkiksi hakusanan erikoismerkit, tyhjä haku tai selaimen päivitys. Kirjaa käytetty aika, kokeilut, havainnot ja uudet ideat testitapauksiksi. Kokeileva testaus täydentää suunniteltuja testejä; se ei korvaa niiden tulosten raportointia.

## Valmis-merkkejä

Testi ja raportti ovat riittävän valmiit harjoituksen ensimmäiseen kierrokseen, kun:

- testin tavoite ja rajaus ovat ymmärrettäviä
- jokaisella tarkistuksella on yhteys verifiointipisteeseen
- testitapauksessa on toistettavat vaiheet ja odotetut tulokset
- automaatiotesti ei tee oikeaa tilausta tai maksua
- onnistunut ja epäonnistunut ajo on tutkittavissa Robotin lokista
- raportissa näkyvät tulokset, rajaukset, havainnot ja seuraava askel
