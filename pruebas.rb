# Script: Single word converter to Pig Latin
def translate
  # GET a word from user input
  p "Give me a Word" 
  string = gets.chomp.downcase

  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
 # IF the word starts with a vowel, add "way" to the end
  if vowels.include?(string[0])
    string + 'way'
  elsif consonants.include?(string[0]) && consonants.include?(string[1])
    string[2..-1] + string[0..1] + 'ay'
  elsif consonants.include?(str[0])
    string[1..-1] + string[0] + 'ay'
  else
    string 
  end
end

p translate




# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word