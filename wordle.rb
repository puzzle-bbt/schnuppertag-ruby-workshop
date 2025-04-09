# Wörter die vorkommen können
words = %w[Apfel Creme Eimer Fisch Glanz Insel Junge Kiste Lampe Nacht Ozean Punkt Radio Sonne Tiger Vogel Wiese Zebra Zweig]

# 'secret_word' ist das von dem Benutzer gesuchte Wort, es wird aus der obenstehenden liste zufällig entnommen
secret_word = words.sample.downcase!

puts "Willkommen zu Wordle in Ruby! Errate das 5-Buchstaben-Wort."

# Diese farben kannst du zum Färben der buchstaben verwenden z.b. "buchstabe.red"
class String
  def red
    "\e[31m#{self}\e[0m"
  end

  def green
    "\e[32m#{self}\e[0m"
  end

  def brown
    "\e[33m#{self}\e[0m"
  end
end

# Das ist eine schlaufe die immer weiter geht, wenn du sie nicht bewusst beendest
loop do
  print "Dein Tipp: "
  guess = gets.chomp.downcase

  # Überprüfe, ob das wort nicht der länge 5 Buchstaben entspricht. (!= 5 überprüft, ob eine Zahl nicht 5 ist)
  if
    puts "Bitte gib ein Wort mit genau 5 Buchstaben ein."
    redo
  end

  # Überprüfe, ob das wort dasselbe ist wie das Secret word
  if
    puts "Glückwunsch! Du hast das Wort erraten: #{secret_word}!"
    exit
  end

  # Dies ist eine Schlaufe, welche dir immer den Buchstaben und die Position des buchstabens zurückgibt
  feedback = ""
  guess.chars.each_with_index do |buchstabe, position|

    # Überprüfe, ob der buchstabe and der richtigen position ist und färbe ihn grün (.green)
    if
      feedback +=

      # Überprüfe, ob der buchstabe im wort enthalten (included) ist und färbe in braun (.brown)
    elsif
      feedback +=

      # Wenn die beiden obigen Überprüfungen nicht wahr sind, färbe den buchstaben rot (.red)
    else
      feedback +=

    end
  end

  # Feedback wird ausgegeben
  puts "Feedback: #{feedback}"
end

# Zusatzaufgabe 1
# Der Benutzer soll nur 5 versuche haben das Wort richtig einzugeben, ebenfalls soll der Benutzer sehen, wie viele versuche er noch übrig hat

# Zusatzaufgabe 2
# Nachdem der Benutzer keine Versuche mehr übrig hat, soll das Spiel noch einmal von vorne beginnen. Dafür sollte ein neues Wort ausgewählt werden

# Zusatzaufgabe 3
# Füge einen Highscore ein, der dir angibt, wie viele Wordles du nacheinander in den begrenzten Versuchen geschafft hasst.