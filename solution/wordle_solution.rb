# Wörter die vorkommen können
words = %w[Apfel Creme Eimer Fisch Glanz Insel Junge Kiste Lampe Nacht Ozean Punkt Radio Sonne Tiger Vogel Wiese Zebra Zweig]

# Secret word ist das von dem User gesuchte Wort, es wird aus der obenstehenden liste random entnommen
secret_word = words.sample

puts "Willkommen zu Wordle in Ruby! Errate das 5-Buchstaben-Wort."

# diese farben kannst du zum Färben der buchstaben verwenden z.b. "buchstabe.red"
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
  guess = gets.chomp

  # Überprüfe, ob das wort nicht der länge 5 Buchstaben entspricht. (!= 5 überprüft, ob eine Zahl nicht 5 ist)
  if guess.length != 5
    puts "Bitte gib ein Wort mit genau 5 Buchstaben ein."
    redo
  end

  # Überprüfe, ob das wort dasselbe ist wie das Secret word
  if guess == secret_word
    puts "Glückwunsch! Du hast das Wort erraten: #{secret_word}!"
    exit
  end

  # Das ist ein Loop, der dir immer den Buchstaben und an welcher Stelle er steht, ausgibt
  feedback = ""
  guess.chars.each_with_index do |char, index|

    # Überprüfe, ob der buchstabe and der richtigen position ist und färbe ihn grün (.green)
    if secret_word[index] == char
      feedback += char.green

      # Überprüfe, ob der buchstabe im wort enthalten (included) ist und färbe in braun (.brown)
    elsif secret_word.include?(char)
      feedback += char.brown

      # Wenn die beiden obigen Überprüfungen nicht wahr sind, färbe den buchstaben rot (.red)
    else
      feedback += char.red

    end
  end

  # Feedback wird ausgegeben
  puts "Feedback: #{feedback}"
end