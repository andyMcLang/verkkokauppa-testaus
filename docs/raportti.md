# Testausraportti — SauceDemo

**Testaaja:** Andreas Lang
**Ajankohta:** 2.10.2026
**Testattu versio:** SauceDemo-demo; versionumeroa ei ilmoitettu
**Testiympäristö:** Chrome-selain Windows-työasemalla
**Suoritustapa:** Manuaalinen

---

## Yhteenveto

Manuaalisesti suoritettiin kolme SauceDemon verkkokaupan peruspolkua käsittelevää testitapausta. Kaikki kolme tapausta hyväksyttiin: kirjautuminen, tuotteen lisääminen ja ostoskorin tarkistus sekä tilauksen viimeistely. Hylättyjä tapauksia tai virhehavaintoja ei raportoitu. Tulos osoittaa, että testattu ostamisen peruspolku toimi määritellyssä Chrome- ja Windows-ympäristössä.

---

## Mitä testattiin

| Alue | Testitapauksia | Läpi | Hylätty | Kattavuus |
| --- | --- | --- | --- | --- |
| Kirjautuminen | 1 (TC-01) | 1 | 0 | V1 |
| Tuotteen lisäys ja ostoskorin tarkistus | 1 (TC-02) | 1 | 0 | V2–V3 |
| Tilauksen viimeistely | 1 (TC-03) | 1 | 0 | V4–V6 |
| **Yhteensä** | **3** | **3** | **0** | **V1–V6** |

## Mitä ei testattu

- Muiden testitunnusten toimintaa, virheellisiä kirjautumistietoja tai puuttuvien kassalomaketietojen käsittelyä.
- Mobiililaitteita, muita selaimia tai suorituskyky-, tietoturva- ja saavutettavuusominaisuuksia.

---

## Havainnot

Virhehavaintoja ei raportoitu. Kaikki kolme testitapausta hyväksyttiin.

---

## Arvio ja suositus

Testattu kirjautumisesta tilauksen vahvistamiseen ulottuva peruspolku toimi manuaalisessa testauksessa määritellyssä ympäristössä. Tulos ei anna varmuutta testaamattomien käyttäjätilien, syötevirheiden, selainten, laitteiden tai ei-toiminnallisten ominaisuuksien toiminnasta. Seuraavaksi peruspolun voi automatisoida ja laajentaa testausta erikseen rajattuihin virhetilanteisiin.
