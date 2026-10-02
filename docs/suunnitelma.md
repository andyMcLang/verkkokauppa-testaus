# Testaussuunnitelma — <https://www.saucedemo.com/>

**Laatija:** Andreas Lang
**Päivämäärä:** 2.10.2026
**Versio:** 0.1

---

## 1. Testattava kohde

**Sovellus:** <https://www.saucedemo.com/>
**Toiminnallisuus:** Kirjautuminen -> tuotteen lisääminen -> ostoskorin tarkistus -> tilauksen viimeistely

**Toiminnallisuus käyttäjän näkökulmasta:**

Yritetään kirjautua verkkokauppaan, lisätä tuote ostoskoriin sekä ostaa tilaus ja viimeistellä

---

## 2. Verifiointipisteet

Verifiointipiste on yksittäinen asia, jonka toimivuus pitää todentaa. Verifiointipisteet tunnistetaan ennen testitapausten kirjoittamista.

| # | Verifiointipiste | Miksi tämä on tärkeä |
| --- | --- | --- |
| V1 | Kelvollisilla kirjautumistiedoilla käyttäjä pääsee tuotelistaukseen. | Ilman onnistunutta kirjautumista ostamista ei voi jatkaa. |
| V2 | Valitun tuotteen lisääminen päivittää ostoskorin lukumäärän. | Käyttäjä saa näkyvän vahvistuksen lisäyksen onnistumisesta. |
| V3 | Ostoskorissa näkyy lisätty tuote oikeine tietoineen, kuten nimen, hinnan ja määrän osalta. | Varmistaa, että ostoskori vastaa käyttäjän valintaa. |
| V4 | Käyttäjä voi siirtyä kassalle ja antaa tilauksen viimeistelyyn vaaditut tiedot. | Varmistaa, että tilausprosessi etenee ostoskorista eteenpäin. |
| V5 | Tilauksen yhteenveto näyttää oikeat tuotteet ja kokonaissumman. | Käyttäjä voi tarkistaa tilauksen ennen sen vahvistamista. |
| V6 | Tilauksen vahvistaminen näyttää onnistumisesta kertovan vahvistuksen. | Varmistaa, että tilaus viimeistellään eikä prosessi jää kesken. |

---

## 3. Variaatiot ja attribuutit

Tekijät, jotka voivat vaikuttaa toiminnallisuuden toimivuuteen. Nämä määräävät tarvittavien testitapausten määrän.

- **Syötedata:** Peruspolun käyttäjätunnus `standard_user`; muut SauceDemon testitunnukset ovat `locked_out_user`, `problem_user`, `performance_glitch_user`, `error_user` ja `visual_user`. Salasana kaikille tunnuksille on `secret_sauce`. Lisäksi käytetään yhden saatavilla olevan tuotteen tietoja ja kassalle kelvollisia yhteystietoja.
- **Käyttäjätila:** Testi aloitetaan uloskirjautuneena ja tyhjällä ostoskorilla. Tuotteen lisäämisen jälkeen käyttäjä on kirjautuneena ja ostoskorissa on yksi tuote.
- **Tuotetyyppi:** Testataan yhtä saatavilla olevaa tuotetta, esimerkiksi Sauce Labs Backpack -tuotetta, kappalemäärällä 1.
- **Selain ja laite:** Esimerkkirajaus on Chrome-selain Windows-työasemalla. Mobiililaitteita ja muita selaimia ei testata tässä ajossa.
- **Kieli:** Käyttöliittymän kielenä on englanti. Kieltä ei vaihdeta testin aikana.
- **Muu:** Jokainen testiajo aloitetaan uudessa selainistunnossa. Kassalomakkeen esimerkkitiedot: etunimi `Testi`, sukunimi `Käyttäjä` ja postinumero `00100`.

---

## 4. Rajaus

**Testataan:**

- Onnistunut kirjautuminen `standard_user`-tunnuksella ja siirtyminen tuotelistaukseen.
- Yhden saatavilla olevan tuotteen lisääminen ostoskoriin sekä tuotteen nimen, hinnan ja määrän tarkistaminen.
- Kassalle eteneminen esimerkkitiedoilla, tilauksen yhteenvedon tarkistaminen ja tilauksen vahvistaminen.

**Ei testata, ja miksi:**

- Muiden testitunnusten, virheellisten kirjautumistietojen ja puuttuvien kassalomaketietojen käsittelyä; tässä testikierroksessa keskitytään onnistuvaan peruspolkuun.
- Mobiililaitteita, muita selaimia eikä suorituskyky-, tietoturva- tai saavutettavuusominaisuuksia; ne vaatisivat omat testitapaukset ja laajemman testauksen.

---

## 5. Testitapaukset

| ID    | Otsikko                                   | Verifiointipiste | Prioriteetti |
| ---   | ---                                       | ---              | ---          |
| TC-01 | Kirjaudu sisään kelvollisilla tunnuksilla | V1               | Korkea       |
| TC-02 | Lisää tuote ja tarkista ostoskori         | V2, V3           | Korkea       |
| TC-03 | Viimeistele tilaus                        | V4, V5, V6       | Korkea       |

Testitapausten yksityiskohdat: [testitapaukset.md](testitapaukset.md)

---

## 6. Lopetuskriteerit

- Kaikki korkean prioriteetin testitapaukset suoritettu
- Löydetyt virheet kirjattu ja luokiteltu
- Testausraportti laadittu
