RISC-V Pyramid

Ein in RISC-V-Assembler entwickeltes Programm zur Ausgabe einer Sternpyramide. Das Projekt entstand im Rahmen einer universitären Aufgabe zur praktischen Auseinandersetzung mit Assemblerprogrammierung.

Beispiel

Bei einer im Speicher hinterlegten Höhe von 4 erzeugt das Programm folgende Ausgabe:

   *
  ***
 *****
*******

Umsetzung

Das Programm berechnet für jede Zeile die benötigte Anzahl an Leerzeichen und *-Zeichen und schreibt die Ausgabe in einen Puffer.

Dabei wurde unter anderem mit folgenden Konzepten gearbeitet:

RISC-V-Assembler

Register- und Speicherverwaltung

Schleifen und bedingte Sprünge

Unterprogramme und Funktionsaufrufe

Arbeit mit Puffern im Speicher

Berechnung von Zeichenpositionen

Ausgabe von Zeichenketten

Ein zentraler Bestandteil des Programms ist ein Unterprogramm, das abhängig von der gewünschten Zeile die entsprechenden Leerzeichen und Sternzeichen in einen Puffer schreibt.

Ausführung

Das Programm wurde mit dem riscVivid-Simulator entwickelt und ausgeführt.

Um das Programm auszuführen:

Repository herunterladen oder klonen

Projekt im riscVivid-Simulator öffnen

Programm assemblieren

Programm im Simulator ausführen

Die Höhe der Pyramide kann über den entsprechenden Speicherwert angepasst werden

Beispielausgabe

Für eine Höhe von 4:

   *
  ***
 *****
*******

Was ich dabei gelernt habe

Durch das Projekt konnte ich praktische Erfahrungen mit hardwarenaher Programmierung sammeln. Besonders beschäftigt habe ich mich mit der Verwaltung von Registern und Speicher, der Umsetzung von Schleifen und Unterprogrammen sowie der Berechnung und Verarbeitung von Zeichen im Speicher.

Der vollständige Quellcode befindet sich in diesem Repository.
