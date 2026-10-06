# Testitapaukset — Verkkokauppa.com

**Laatija:** Andreas Lang
**Päivämäärä:** 6.10.2026

---

## TC-01: Etsi tuote ja avaa sen tuotesivu

**Verifiointipiste:** V1, V2
**Prioriteetti:** Korkea
**Testityyppi:** Toiminnallinen testaus

### TC-01 Esiehdot

1. Verkkokauppa.com on käytettävissä ja käyttöliittymän kieleksi on valittu suomi.
2. Käyttäjä ei ole kirjautunut sisään; testissä ei muuteta ostoskoria.
3. Jos evästeiden suostumusikkuna näkyy, valitaan vain välttämättömät evästeet.

### TC-01 Testidata

| Kenttä | Arvo |
| --- | --- |
| Hakusana | `Apple 20 W USB-C laturi` |
| Odotettu tuote | `Apple 20 W USB-C laturi (MD3J4)` |
| Tuotenumero | `663670` (vertailutieto, ei yksinään riittävä tarkistus) |

### TC-01 Testiaskeleet

| # | Toiminto | Odotettu tulos |
| --- | --- | --- |
| 1 | Avaa `https://www.verkkokauppa.com/fi/etusivu`. | Etusivu avautuu ja hakukenttä on käytettävissä. |
| 2 | Syötä hakukenttään `Apple 20 W USB-C laturi` ja suorita haku. | Hakutulossivu avautuu ja sivu kertoo hakutermin olevan `Apple 20 W USB-C laturi`. |
| 3 | Etsi hakutuloksista `Apple 20 W USB-C laturi (MD3J4)`. | Odotettu tuote löytyy hakutuloksista. Hakutulosten kokonaismäärää tai järjestystä ei tarkisteta. |
| 4 | Avaa kyseisen tuotteen hakutulos. | Tuotesivu avautuu ja sen päätason otsikko on `Apple 20 W USB-C laturi (MD3J4)`. |

### TC-01 Lopputulos

**Suoritettu:** 6.10.2026 automaattisesti Robot Frameworkilla ja Browser Librarylla.

- [x] Hyväksytty
- [ ] Hylätty — havainto: [H-xx]

---

## TC-02: Tyhjä hakukenttä ei käynnistä hakua

**Verifiointipiste:** V3
**Prioriteetti:** Keskitaso
**Testityyppi:** Toiminnallinen negatiivinen testaus

### TC-02 Esiehdot

1. Verkkokauppa.com on käytettävissä ja käyttöliittymän kieleksi on valittu suomi.
2. Käyttäjä ei ole kirjautunut sisään; testissä ei muuteta ostoskoria.
3. Jos evästeiden suostumusikkuna näkyy, valitaan vain välttämättömät evästeet.
4. Hakukenttä jätetään tyhjäksi.

### TC-02 Testidata

| Kenttä | Arvo |
| --- | --- |
| Hakusana | Tyhjä |

### TC-02 Testiaskeleet

| # | Toiminto | Odotettu tulos |
| --- | --- | --- |
| 1 | Avaa `https://www.verkkokauppa.com/fi/etusivu`. | Etusivu avautuu ja hakukenttä on käytettävissä. |
| 2 | Jätä hakukenttä tyhjäksi. | Hakukentän arvo on tyhjä ja Etsi-painike näkyy poissa käytöstä. |

Tyhjää hakua ei lähetetä, joten hakutulossivua tai nollatuloksen viestiä ei odoteta.

### TC-02 Lopputulos

- **Suoritettu:** 6.10.2026 automaattisesti Robot Frameworkilla ja Browser Librarylla.

- [x] Hyväksytty
- [ ] Hylätty — havainto: [H-xx]
