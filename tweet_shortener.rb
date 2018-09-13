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

puts dictionary

def word_substituter(string)
  tweet = []
  string.split(" ").each do |word|
    if dictionary.has_key?(word) #true or false
      tweet << dictionary[word]
    else
      tweet << word
    end
  end
  binding.pry
  tweet.join
end
