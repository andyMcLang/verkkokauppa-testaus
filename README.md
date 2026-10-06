# Verkkokaupan testausharjoitus

Itsenäinen testausharjoitus, jossa käyn läpi kokonaisen testauskierroksen julkisesti saatavilla olevalle verkkosovellukselle: testaussuunnitelmasta testitapausten suunnitteluun, suoritukseen, raportointiin ja testiautomaatioon.

Tarkoituksena on harjoitella testauksen ammattikäytäntöjä: testattavan kohteen jäsentämistä, verifiointipisteiden tunnistamista, testitapausten kirjoittamista ylläpidettävällä tarkkuustasolla sekä tulosten raportointia ymmärrettävästi.

## Testattava kohde

[Sovellus ja URL]
[Rajattu toiminnallisuus, jota tämä harjoitus koskee]

## Sisältö

Juuren `docs/`-tiedostot ja `robot/tests/`-testit koskevat SauceDemoa. Verkkokauppa.comin erilliset dokumentit löytyvät `docs/verkkokauppa/`-kansiosta, ja sen automaatiotestit kuuluvat kansioon `robot/tests/verkkokauppa/`.

| Tiedosto | Kuvaus |
| --- | --- |
| [docs/suunnitelma.md](docs/suunnitelma.md) | Testaussuunnitelma: kohde, verifiointipisteet, variaatiot, rajaus |
| [docs/testitapaukset.md](docs/testitapaukset.md) | Testitapaukset esiehtoineen, askeleineen ja odotettuine tuloksineen |
| [docs/raportti.md](docs/raportti.md) | Testausraportti: kattavuus, havainnot ja arvio tuotelaadusta |
| [docs/verkkokauppa/suunnitelma.md](docs/verkkokauppa/suunnitelma.md) | Verkkokauppa.comin testaussuunnitelmapohja |
| [docs/verkkokauppa/testitapaukset.md](docs/verkkokauppa/testitapaukset.md) | Verkkokauppa.comin testitapauspohja |
| [docs/verkkokauppa/raportti.md](docs/verkkokauppa/raportti.md) | Verkkokauppa.comin testausraporttipohja |
| [docs/verkkokauppa/ohjeet_testin_rakentamiseen_ja_raportointiin.md](docs/verkkokauppa/ohjeet_testin_rakentamiseen_ja_raportointiin.md) | Aloittelijan vaiheittainen ohje testin suunnitteluun, automatisointiin ja raportointiin |
| `robot/` | Robot Framework -automaatiotestit |

## Testiautomaatio

Osa manuaalisista testitapauksista on automatisoitu Robot Frameworkilla ja Browser Librarylla.

### Asennus

```bash
pip install robotframework robotframework-browser
rfbrowser init
```

### Testien ajaminen

```bash
robot robot/tests/
```

Tulokset syntyvät hakemistoon `results/` (log.html, report.html).

## Keskeiset havainnot

[Täytetään, kun testaus on suoritettu: mitä löytyi ja mitä opin.]

## Käytetyt työkalut

- Robot Framework
- Browser Library (Playwright)
- Python
- Markdown-dokumentointi

---

Tämä on henkilökohtainen oppimisprojekti. Testaus kohdistuu julkisesti saatavilla olevaan sovellukseen, ja automaatioajot on pidetty määrältään maltillisina.
