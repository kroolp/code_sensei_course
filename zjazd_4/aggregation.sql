SELECT AVG(pojemnosc_silnika), MIN(pojemnosc_silnika), MAX(pojemnosc_silnika)
FROM samochody;

SELECT COUNT(*)
FROM wypozyczenia
JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Skoda';
