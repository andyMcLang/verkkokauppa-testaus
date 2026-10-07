# Verkkokaupan testausharjoitus

Itsenäinen testausharjoitus, jossa käyn läpi kokonaisen testauskierroksen julkisesti saatavilla olevalle verkkosovellukselle: testaussuunnitelmasta testitapausten suunnitteluun, suoritukseen, raportointiin ja testiautomaatioon.

Tarkoituksena on harjoitella testauksen ammattikäytäntöjä: testattavan kohteen jäsentämistä, verifiointipisteiden tunnistamista, testitapausten kirjoittamista ylläpidettävällä tarkkuustasolla sekä tulosten raportointia ymmärrettävästi.

## Testattava kohde

Testauksen kohteena on Verkkokauppa.comin julkinen sivusto: <https://www.verkkokauppa.com>. Testit suoritetaan Windowsissa Google Chromella. Tässä harjoituksessa testataan tuotteen hakua ja tuotesivun avaamista sekä tyhjän haun estämistä.

## Sisältö

Juuren `docs/`-tiedostot ja `robot/tests/`-testit koskevat SauceDemoa. Verkkokauppa.comin erilliset dokumentit löytyvät `docs/verkkokauppa/`-kansiosta, ja sen automaatiotestit kuuluvat kansioon `robot/tests/verkkokauppa/`.

| Tiedosto | Kuvaus |
| --- | --- |
| [docs/suunnitelma.md](docs/suunnitelma.md) | SauceDemon Testaussuunnitelma: kohde, verifiointipisteet, variaatiot, rajaus |
| [docs/testitapaukset.md](docs/testitapaukset.md) | SauceDemon Testitapaukset esiehtoineen, askeleineen ja odotettuine tuloksineen |
| [docs/raportti.md](docs/raportti.md) | SauceDemon Testausraportti: kattavuus, havainnot ja arvio tuotelaadusta |
| [docs/verkkokauppa/suunnitelma.md](docs/verkkokauppa/suunnitelma.md) | Verkkokauppa.comin testaussuunnitelma |
| [docs/verkkokauppa/testitapaukset.md](docs/verkkokauppa/testitapaukset.md) | Verkkokauppa.comin testitapaukset |
| [docs/verkkokauppa/raportti.md](docs/verkkokauppa/raportti.md) | Verkkokauppa.comin testausraportti |
| [docs/verkkokauppa/ohjeet_testin_rakentamiseen_ja_raportointiin.md](docs/verkkokauppa/ohjeet_testin_rakentamiseen_ja_raportointiin.md) | Aloittelijan vaiheittainen ohje testin suunnitteluun, automatisointiin ja raportointiin |
| `robot/` | Robot Framework -automaatiotestit |

## Testiautomaatio

Osa manuaalisista testitapauksista on automatisoitu Robot Frameworkilla ja Browser Librarylla.

### Asennus

Aja seuraavat komennot projektin juurikansiossa PowerShellissä. Tarvitset Windowsiin asennetun Pythonin, Python Launcherin (py -komento) ja Google Chromen.

```powershell
py -m venv .venv
& .\.venv\Scripts\python.exe -m pip install robotframework robotframework-browser robotcode-runner
& .\.venv\Scripts\python.exe -m Browser.entry init --skip-browsers
```

### Testien ajaminen

```powershell
.\.venv\Scripts\python.exe -m robotcode.cli robot robot/tests/verkkokauppa/
```

Tulokset syntyvät hakemistoon `results/` (log.html, report.html).

## Keskeiset havainnot

Viimeisin ajo 7.10.2026: 2 testiä hyväksytty, 0 hylätty. Testit kattoivat tuotteen haun ja tuotesivun avaamisen sekä tyhjän haun eston. Nollatuloksen hakua ei automatisoitu, koska hakutulokset vaihtelivat automaatioympäristöjen välillä.

## Käytetyt työkalut

- Robot Framework
- Browser Library (Playwright)
- Python
- Markdown-dokumentointi

---

Tämä on henkilökohtainen oppimisprojekti. Testaus kohdistuu julkisesti saatavilla olevaan sovellukseen, ja automaatioajot on pidetty määrältään maltillisina.
