# Testitapaukset — [SauceDemo](https://www.saucedemo.com/)

**Laatija:** Andreas Lang
**Päivämäärä:** 2.10.2026

## TC-01: Kirjaudu sisään kelvollisilla tunnuksilla

**Verifiointipiste:** V1
**Prioriteetti:** Korkea
**Testityyppi:** Feature-testaus

### TC-01 Esiehdot

1. Käytössä on Chrome-selain Windows-työasemalla.
2. Selainistunto on uusi, käyttäjä on kirjautumaton ja ostoskori tyhjä.
3. SauceDemon kirjautumissivu on avattu.

### TC-01 Testidata

| Kenttä            | Arvo              |
| ---               | ---               |
| Käyttäjätunnus    | `standard_user`   |
| Salasana          | `secret_sauce`    |

### TC-01 Testiaskeleet

| #   | Toiminto  | Odotettu tulos    |
| --- | ---       | ---               |
| 1   | Syötä käyttäjätunnus ja salasana kirjautumislomakkeeseen. | Molemmat kentät hyväksyvät syötetyt arvot. |
| 2   | Valitse **Login**. | Käyttäjä kirjautuu sisään ja siirtyy tuotelistaukseen. |
| 3   | Tarkista tuotelistauksen näkyminen. | Tuotelista ja ostoskorin kuvake näkyvät, eikä virheilmoitusta näytetä. |

### TC-01 Lopputulos

- [x] Hyväksytty
- [ ] Hylätty — havainto: [H-xx]

---

## TC-02: Lisää tuote ja tarkista ostoskori

**Verifiointipiste:** V2, V3
**Prioriteetti:** Korkea
**Testityyppi:** Feature-testaus

### TC-02 Esiehdot

1. Käytössä on Chrome-selain Windows-työasemalla.
2. Selainistunto on uusi, käyttäjä on kirjautumaton ja ostoskori tyhjä.

### TC-02 Testidata

| Kenttä | Arvo |
| --- | --- |
| Käyttäjätunnus | `standard_user` |
| Salasana | `secret_sauce` |
| Tuote | Sauce Labs Backpack |
| Määrä | 1 |

### TC-02 Testiaskeleet

| # | Toiminto | Odotettu tulos |
| --- | --- | --- |
| 1 | Kirjaudu sisään testitiedoilla. | Tuotelistaus avautuu. |
| 2 | Valitse Sauce Labs Backpack -tuotteen **Add to cart** -painike. | Painikkeen tekstiksi vaihtuu **Remove**, ja ostoskorin lukumääräksi tulee 1. |
| 3 | Avaa ostoskori ostoskorin kuvakkeesta. | Ostoskorissa näkyy Sauce Labs Backpack. |
| 4 | Tarkista tuotteen nimi, hinta ja määrä. | Nimi vastaa valittua tuotetta, hinta vastaa tuotelistauksessa näytettyä hintaa ja määrä on 1. |

### TC-02 Lopputulos

- [x] Hyväksytty
- [ ] Hylätty — havainto: [H-xx]

---

## TC-03: Viimeistele tilaus

**Verifiointipiste:** V4, V5, V6
**Prioriteetti:** Korkea
**Testityyppi:** Feature-testaus

### TC-03 Esiehdot

1. Käytössä on Chrome-selain Windows-työasemalla.
2. Selainistunto on uusi, käyttäjä on kirjautumaton ja ostoskori tyhjä.

### TC-03 Testidata

| Kenttä | Arvo |
| --- | --- |
| Käyttäjätunnus | `standard_user` |
| Salasana | `secret_sauce` |
| Tuote | Sauce Labs Backpack, määrä 1 |
| Etunimi | `Testi` |
| Sukunimi | `Käyttäjä` |
| Postinumero | `00100` |

### TC-03 Testiaskeleet

| # | Toiminto | Odotettu tulos |
| --- | --- | --- |
| 1 | Kirjaudu sisään, lisää Sauce Labs Backpack ostoskoriin ja avaa ostoskori. | Käyttäjä on kirjautunut ja ostoskorissa näkyy yksi oikea tuote. |
| 2 | Valitse **Checkout**. | Kassan yhteystietolomake avautuu. |
| 3 | Syötä etunimi, sukunimi ja postinumero ja valitse **Continue**. | Tilauksen yhteenveto avautuu. |
| 4 | Tarkista tilauksen tuote, määrä, välisummaa, veroa ja kokonaissummaa koskevat tiedot. | Yhteenvedon tuote ja määrä vastaavat ostoskoria, ja kokonaissumma vastaa näytettyjen välisumman ja veron summaa. |
| 5 | Valitse **Finish**. | Tilaus vahvistetaan ja näytetään onnistumisviesti **Thank you for your order!**. |

### TC-03 Lopputulos

- [x] Hyväksytty
- [ ] Hylätty — havainto: [H-xx]
