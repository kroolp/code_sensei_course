SELECT samochody.* FROM samochody
LEFT JOIN wypozyczenia ON samochody.id = wypozyczenia.samochod_id
WHERE wypozyczenia.samochod_id IS NULL;

SELECT * FROM klienci
JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Ford';

SELECT * FROM klienci
JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka <> 'Skoda';

SELECT klienci.*, karty_klientow.wysokosc_znizki, samochody.marka FROM klienci
LEFT JOIN karty_klientow ON karty_klientow.klient_id = klienci.id
JOIN wypozyczenia ON wypozyczenia.klient_id = klienci.id
JOIN samochody ON wypozyczenia.samochod_id = samochody.id
WHERE karty_klientow.klient_id IS NULL
AND samochody.marka = 'Skoda';
