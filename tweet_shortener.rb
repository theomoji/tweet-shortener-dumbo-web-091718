# Write your code here.

# word_substituter
require "pry"
def dictionary
  {
  "hello" => 'hi',
  "to"  => '2',
  "two"  => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&",
}
end

# puts dictionary

def word_substituter(string)
  new_word = []
  string.split(" ").each do |word|
    binding.pry
    if dictionary.has_key?(word) #true or false

      dictionary[word]
    end
end
