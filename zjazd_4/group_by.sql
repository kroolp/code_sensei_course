SELECT rok_produkcji, COUNT(model) AS liczba_samochodow
FROM samochody
GROUP BY rok_produkcji
HAVING COUNT(model) > 3
ORDER BY rok_produkcji;
