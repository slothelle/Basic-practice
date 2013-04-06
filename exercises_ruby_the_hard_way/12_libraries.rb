# This is new!
# Exciting!

# This is how you add libraries to your script from the Ruby feature set
# or gems, or things you wrote yourself.

# Keeps your program small, but also adds documentation. 

require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
  f.each_line { |line| p line }
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.cotent_encoding
  puts f.last_modified
end