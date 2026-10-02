# Verkkokaupan testausharjoitus

Itsenäinen testausharjoitus, jossa käyn läpi kokonaisen testauskierroksen julkisesti saatavilla olevalle verkkosovellukselle: testaussuunnitelmasta testitapausten suunnitteluun, suoritukseen, raportointiin ja testiautomaatioon.

Tarkoituksena on harjoitella testauksen ammattikäytäntöjä: testattavan kohteen jäsentämistä, verifiointipisteiden tunnistamista, testitapausten kirjoittamista ylläpidettävällä tarkkuustasolla sekä tulosten raportointia ymmärrettävästi.

## Testattava kohde

[Sovellus ja URL]
[Rajattu toiminnallisuus, jota tämä harjoitus koskee]

## Sisältö

| Tiedosto | Kuvaus |
|---|---|
| [docs/suunnitelma.md](docs/suunnitelma.md) | Testaussuunnitelma: kohde, verifiointipisteet, variaatiot, rajaus |
| [docs/testitapaukset.md](docs/testitapaukset.md) | Testitapaukset esiehtoineen, askeleineen ja odotettuine tuloksineen |
| [docs/raportti.md](docs/raportti.md) | Testausraportti: kattavuus, havainnot ja arvio tuotelaadusta |
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
