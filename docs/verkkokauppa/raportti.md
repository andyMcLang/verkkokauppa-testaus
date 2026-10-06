# Testausraportti — Verkkokauppa.com

**Testaaja:** Andreas Lang
**Ajankohta:** 6.10.2026
**Testattu versio:** Verkkokauppa.comin julkinen tuotantosivusto; versionumeroa ei ilmoitettu
**Testiympäristö:** Windows, Chrome (Playwrightin `channel=chrome`), headless
**Suoritustapa:** Automaattinen (Robot Framework ja Browser Library)

---

## Yhteenveto

Robot Frameworkilla suoritettiin kaksi verkkokaupan hakua käsittelevää testiä. Molemmat hyväksyttiin: TC-01 löysi odotetun tuotteen ja avasi oikean tuotesivun; TC-02 varmisti, että tyhjä hakukenttä pitää Etsi-painikkeen poissa käytöstä. Testissä ei tehty ostosta. Tulos koskee vain näitä tapauksia ja tätä testaushetkeä.

---

## Mitä testattiin

| Alue | Testitapauksia | Läpi | Hylätty | Kattavuus |
| --- | --- | --- | --- | --- |
| Tuotehaku ja tuotesivulle siirtyminen | 1 (TC-01) | 1 | 0 | V1, V2 |
| Tyhjän haun estäminen | 1 (TC-02) | 1 | 0 | V3 |
| **Yhteensä** | **2** | **2** | **0** | **V1–V3** |

## Mitä ei testattu

- Kirjautuminen, ostoskori, tilaus ja maksaminen.
- Muut hakusanat, muut tuotteet, selaimet ja mobiililaitteet.
- Nollatuloksen palautetta; epätavallinen hakusana tuotti eri automaatioympäristöissä eri osumamääriä.
- Hinnan, saatavuuden ja hakutulosten järjestyksen oikeellisuus.
- Suorituskyky, tietoturva ja saavutettavuus.

---

## Havainnot

Tässä ajossa ei havaittu testitapausten odotuksista poikkeavaa toimintaa. Virhehavaintoa ei avattu. Kahden onnistuneen testin perusteella ei voi päätellä muiden toimintojen virheettömyyttä.

---

## Arvio ja suositus

Rajattu tuotehaku, oikealle tuotesivulle siirtyminen ja tyhjän haun esto toimivat tässä ajossa. Nollatuloksen palautteen automatisointi kannattaa tehdä vasta vakaassa testiympäristössä tai testidatalla, jonka tulokset eivät vaihtele selainkontekstin mukaan.

## Ajon tulokset

- [Robot Framework -raportti](../../results/report.html)
- [Robot Framework -loki](../../results/log.html)
- [Robot Framework -output.xml](../../results/output.xml)
