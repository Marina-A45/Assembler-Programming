#include <stdio.h>


int main() {
    int rows = 4;  // Anzahl der Zeilen
    int spaces, stars;
    
    for (int i = 1; i <= rows; i++) {
        spaces = rows - i;  // Berechnet die Anzahl der Leerzeichen
        stars = (2 * i) - 1; // Berechnet die Anzahl der Sterne

        // Leerzeichen ausgeben
        for (int j = 0; j < spaces; j++) {
            printf(" ");
        }

        // Sterne ausgeben
        for (int k = 0; k < stars; k++) {
            printf("*");
        }

        printf("\n"); // Neue Zeile
    }

    return 0;
}
