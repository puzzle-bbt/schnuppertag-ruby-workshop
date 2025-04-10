# 1. Speichere deinen Namen in einer Variable namens "name" ab
name = "Miguel"

# 2. Gib die Variable in der Konsole aus
puts name

# 3. Gib deinen Namen in umgekehrter Reihenfolge aus
puts name.reverse

# 4. Gib deinen Namen in Grossbuchstaben aus
puts name.upcase

# 5. Gib die Anzahl Buchstaben in deinem Namen aus
puts name.length

# 6. Überprüfe, ob dein Name den Buchstaben 'e' enthält und gib true (richtig) oder false (falsch) aus
puts name.include?("e")

# 7. Gib deinen Namen 5-mal aus
5.times do
  puts name
end

# 8. Summiere zwei Zahlen und gib das Resultat aus
puts 7 + 5

# 9. Multipliziere eine Zahl mit sich selber (quadriere sie) und gib das Ergebnis aus
puts 6 ** 2

# 10. Finde die quadratwurzel von '144' und gib sie aus
puts Math.sqrt(144)

# 11. Generiere eine zufällige Zahl zwischen '1' und '100' und gib sie aus
puts rand(1..100)

# 12. Erstelle eine Variabel mit einer Nummer
#     Prüfe dann mithilfe einer if-else Bedingung, ob die Nummer gerade oder ungerade ist.
#     Wenn die Nummer gerade ist, gib 'Die Nummer ist gerade' aus.
#     Wenn die Nummer ungerade ist, gib 'Die Nummer ist ungerade' aus.
number = 10
if number.even?
  puts "Gerade Nummer"
else
  puts "Ungerade Nummer"
end

# 13. Verwende 'unless' um zu testen, ob dein Name 'Nevio' ist.
#     Wenn nicht, solltest du 'Mein Name ist nicht Nevio!' ausgeben
unless name == "Nevio"
  puts "Mein Name ist nicht Nevio!"
end

# 14. Verwende eine for each, um nummern von 1 bis 5 auszugeben
(1..5).each do |num|
  puts num
end

# 15. Verwende eine Schleife, um jeden Buchstaben deines Namens auf einer neuen Zeile auszugeben
name.each_char do |buchstabe|
  puts buchstabe
end

# 16. Frage den Benutzer nach seinem Alter und gib es aus
puts "Bitte gib dein Alter ein: "
age = gets.chomp
puts "Du bist #{age} Jahre alt."

# 17. Gib den ersten buchstaben deines Names aus
puts name[0]























name.reverse