require 'watir'
browser = Watir::Browser.new

link = ARGV[0]
browser.goto link
tweet = browser.article({"data-testid" =>  "tweet"})
author = tweet.div({"data-testid" =>  "User-Name"}).text.split("\n")
text = tweet.div({"data-testid" =>  "tweetText"}).text
date = tweet.times.last.datetime
date_parsed = Date.parse(date)

browser.close

result = "@misc{placeholder_name,
  author = {#{author[0]} - #{author[1]}},
  title = {#{text.gsub(/[&%]/) {|x| "\\#{x}"}}},
  year = {#{date_parsed.year}},
  month = {#{date_parsed.month}},
  day = {#{date_parsed.day}},
  timestamp = {#{date_parsed.year}-#{date_parsed.month}-#{date_parsed.day}},
  howpublished = {\\url{#{link.gsub(/x\.com/, 'twitter.com')}}},
  note = {Accessed: #{Date.today.iso8601}}
}"
puts result