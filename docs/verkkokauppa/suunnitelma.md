# Testaussuunnitelma — Verkkokauppa.com

**Laatija:** Andreas Lang
**Päivämäärä:** 5.10.2026
**Versio:** 0.1

---

## 1. Testattava kohde

**Sovellus:** <https://www.verkkokauppa.com/>
**Toiminnallisuus:** Tuotteen etsiminen haulla, oikealle tuotesivulle siirtyminen ja tyhjän haun estämisen tarkistaminen.

**Toiminnallisuus käyttäjän näkökulmasta:**

Käyttäjä etsii haluamansa tuotteen ja avaa oikeat tuotetiedot. Tyhjällä hakukentällä hakua ei voi käynnistää.

---

## 2. Verifiointipisteet

Verifiointipiste on yksittäinen asia, jonka toimivuus pitää todentaa.

| # | Verifiointipiste | Miksi tämä on tärkeä |
| --- | --- | --- |
| V1 | Hakutulokset latautuvat ja niissä näkyy hakusanaa vastaava tuote. | Käyttäjän täytyy löytää etsimänsä tuote haulla. |
| V2 | Avatun tuotesivun nimi vastaa hakutuloksesta valittua tuotetta. | Käyttäjän pitää päästä tarkastelemaan oikeaa tuotetta, ei samankaltaista väärää tuotetta. |
| V3 | Tyhjällä hakukentällä Etsi-painike on poissa käytöstä. | Estää tyhjän haun lähettämisen ja ilmaisee käyttäjälle, että hakusana tarvitaan. |

---

## 3. Variaatiot ja attribuutit

- **Syötedata:** TC-01 käyttää hakusanaa `Apple 20 W USB-C laturi` ja tuotetta `Apple 20 W USB-C laturi (MD3J4)`, tuotenumero 663670. TC-02 käyttää tyhjää hakukenttää.
- **Käyttäjätila:** Kirjautumaton käyttäjä; ostoskoria ei muuteta.
- **Tuotetyyppi:** Yksi hakutuloksista valittava tuote. Tuotteen saatavuus tarkistetaan ennen testin automatisointia.
- **Selain ja laite:** Chrome Windows-työasemalla; vahvistetaan ajohetkellä.
- **Kieli:** Suomenkielinen käyttöliittymä, jos se on saatavilla testaushetkellä.
- **Muu:** Julkisen verkkokaupan sisältö ja tuotevalikoima voivat muuttua. Hakutulosten määrä, järjestys, hinta ja saatavuus eivät ole tämän testin odotusarvoja. Jos evästeiden suostumusikkuna näkyy, testissä valitaan vain välttämättömät evästeet.

---

## 4. Rajaus

**Testataan:**

- Etusivun avaaminen.
- Tuotteen hakeminen ja yhden hakutuloksen avaaminen.
- Tyhjän hakukentän ja poissa käytöstä olevan Etsi-painikkeen tarkistaminen.

**Ei testata, ja miksi:**

- Kirjautumista, ostoskoria, tilausta tai maksua; ne ovat tämän ensimmäisen polun ulkopuolella eikä testissä tehdä ostosta.
- Nollatuloksen palautetta; tuotantosivuston epätarkka haku palautti eri automaatioympäristöissä eri tuloksia myös epätavallisilla hakusanoilla.
- Muita selaimia, mobiililaitteita, suorituskykyä, tietoturvaa tai saavutettavuutta; niille tarvitaan omat rajatut testit.
- Tuotteen hintaa tai saatavuutta pysyvänä odotusarvona, koska verkkokaupan sisältö voi muuttua.

---

## 5. Testitapaukset

| ID | Otsikko | Verifiointipiste | Prioriteetti |
| --- | --- | --- | --- |
| TC-01 | Etsi tuote ja avaa sen tuotesivu | V1, V2 | Korkea |
| TC-02 | Tyhjä hakukenttä ei käynnistä hakua | V3 | Keskitaso |

Testitapausten yksityiskohdat: [testitapaukset.md](testitapaukset.md)

---

## 6. Lopetuskriteerit

- Kaikki sovitut testitapaukset on suoritettu.
- Havaitut virheet on kirjattu ja luokiteltu.
- Testausraportti on laadittu.
