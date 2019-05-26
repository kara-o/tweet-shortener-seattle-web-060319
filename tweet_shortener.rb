def dictionary
 {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
  }
end

def word_substituter(tweet)
  d = dictionary
  tweet_array = tweet.split(/\b/)
  new_arr = tweet_array.collect do |x|
    lcX = x.downcase
    d.key?(lcX) ? d[lcX] : x

  end
  new_arr.join('')
end    

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet[0..139] + "..."
  
  else new_tweet 
  end
end
  
  