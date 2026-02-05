#include <string.h>
#include <stdio.h>

#define ROWS 4     // Anzahl der Zeilen
#define WIDTH 7    // Maximale Breite der Pyramide

int main() {
    char pyramid[ROWS * WIDTH + 1]; // Eindimensionales Array für alle Zeichen
    memset(pyramid, ' ', ROWS * WIDTH); // Alles zuerst mit Leerzeichen füllen
    pyramid[ROWS * WIDTH] = '\0';  // Nullzeichen für sauberen String

    // Sterne setzen
    for (int i = 0; i < ROWS; i++) {
        int stars = (2 * i) + 1; // Anzahl der Sterne (1, 3, 5, 7)
        int start_pos = (WIDTH - stars) / 2; // Berechnung der Startposition für Sterne
        int row_offset = i * WIDTH; // Offset für die Zeile im eindimensionalen Array
        
        for (int j = 0; j < stars; j++) {
            pyramid[row_offset + start_pos + j] = '*'; // Sterne setzen
        }
    }

    // Formatierte Ausgabe
    for (int i = 0; i < ROWS; i++) {
        int row_offset = i * WIDTH;
        printf("%.*s\n", WIDTH, pyramid + row_offset);
    }

    return 0;
}

