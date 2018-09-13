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
  "For" => '4'

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

  tweet.join(" ")
end


def bulk_tweet_shortener(string)
  string.each {| tweet | puts word_substituter(tweet)}
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end


def shortened_tweet_truncator(string)
  if string.length > 140
    string.truncate(140)
  else
    string
  end  
end


4. Write another method, `shortened_tweet_truncator`, that truncates the tweet to 140 characters with an ellipsis (...)
if it's still too long after substitution. E.g. "Random Passage satisfies the craving for those details that ..."
  * **Hint:** Strings are indexed like arrays. That means you can return string index elements, or a set of string index elements,
  using the `[]` method. For example:
