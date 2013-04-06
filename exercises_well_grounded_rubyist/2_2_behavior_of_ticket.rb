# Crating an object: the behavior of a ticket
# The ticket object, behavior expectations

# We want something that will pull out this information
# 01/02/03
# Town Hall
# Author's Reading
# Mark Twain
# Second Balcony, row J, seat 12
# $5.50

ticket = Object.new

def ticket.venue
  "Town Hall"
end

def ticket.performer
  "Mark Twain"
end

def ticket.event
  "Author's Reading"
end

def ticket.price
  5.50
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.date
  "01/02/03"
end

puts "This ticket is for #{ticket.event} at #{ticket.venue}, on #{ticket.date}. The performer is " +
      "#{ticket.performer}. The seat is #{ticket.seat}, and it costs $#{"%.2f" % ticket.price}." 