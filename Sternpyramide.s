#-----------------------------------------------------------
#	Aufgabe3: Sternenpyramide
#-----------------------------------------------------------
	
	.data 
star: 		.ascii "*"			#*
space:		.ascii " "			# " "
enter:   	.ascii "\n"            		#'\n'
	
	.align 2
height:		.word 5							  			#Höhe der Pyramide -1
one: 		.word 1		

string_buffer:	.space 100			# Platz für 3 zeichen + \0
	
	.text
	
	
main:	
    		lb 	t1, star(zero)          # Lade  'star'
   		lb	t2, space(zero)		#Lade " "
		lb	a5, enter(zero)		#Lade "\n"
		
		add	s11, zero, zero		#Initialisierung von s11 weil später verwendet
    		lw	t3, height(zero)		#Lade height
		lw	s10, one(zero)

		j				loop_1
	
	
ausgabe: 	add	a0, zero, 1		#a0=stdout
		add	a1, zero, string_buffer
		add	a2, zero, s11		#a2 = Länge des Strings
		add	a7, zero, 64		#a7 = syscall 64 (write)
		scall					 			

# Programm beenden
       		add     a0, zero, 0             # exit code 0
       		add     a7, zero, 93            # sycall 93: exit
        	scall
		

		

		
#-------------------------------------------------------------------------------
#		Unterprogramm zum Befüllen des Ausgabestrings mit *, " ", \n
#-----------------------------------------------------------------------------------


	
#Loop parameter: t1 = *, t2 = " ", t3 = heigth, t5=i, t6=space, s6=stars, s2=2*i, s3 = j; s4=k, t11=z, t12 = Laufparamter für den gesamten loop

loop_1:		add	t5, zero, 1		#int i = 1 							
		
#Berechne Anzahl Leerzeichen, Sterne		
loop_beginn:	beq	t5, t3, ausgabe		#beende das Unterprogramm sobald height durchgänge rereicht
		
		sub	t6, t3, t5		# space = rows - i
		add	s2, t5, t5		# s2 = 2*i
		
		sub	s6, s2, s10		# spaces = rows -i
		add	t5, t5, 1			# i++
		
		j 	sub_loop1		#Springe zu inneren Schleifen
		

#Leerzeichen in String einspeichern		
sub_loop1:	add	s3, zero, zero		#int j = 1;
		add	s11, s11, 1		#s11 = Laufparameter für Stringstelle

sub_loop1_be:	beq	s3, t6, sub_loop2	#t9 = j , j < space
				
		sb 	t2, string_buffer(s11)	# String[j] = " "; s3 hier um "String" an passender Stelle zu beschreiben
		add	s11, s11, 1		#Laufparameter erhöhen
		add	s3, s3, 1		#(j++)
		j	sub_loop1_be
				
					
#Sterne in String einspeichern	
sub_loop2:	add 	s4 ,zero, zero		#int k = 1;
				
sub_loop2_be:	beq	s4, s6, sub_loop3	#Springe weiter wenn k = space
		sb 	t1, string_buffer(s11)	#String[k] = "*";
		add	s11, s11, 1		#Erhöhe Laufparameter
		add	s4, s4, 1		#k++
		j	sub_loop2_be		
		
#Leerzeichen ende der Zeile
sub_loop3:	add	s5, zero, zero		#z = 1; 
sub_loop3_be:	beq	s5, t6, sub_loop4		#s5 = z; z = space
		sb	t2, string_buffer(s11)	# String[s11] = " ";
		add	s11, s11, 1		#Laufparameter aktualisieren
		add	s5, s5, 1		#(z++)
		j	sub_loop3_be

#Zeilenumbruch ans Ende		
sub_loop4: 	sb	a5, string_buffer(s11)	
		add	s11, s11, 1		#Laufparameter aktualisieren
		j 	loop_beginn		#Springe zurück zur äußeren Schleife
	