# Dear Mom,
### This week I learned a lot at Dev Bootcamp here in Nepal. Here are 10 things that made my brain bend, made me a better person for knowing, or helped me learn how much I don't know:

* Recursion (and also iteration v. recursion)
* Nested arrays (making them and accessing data in tables)
* Modeling real world examples
* Writing pseudocode
* Working in groups and pair programming
* Giving specific, kind, and actionable feedback (and receiving feedback)
* Using Enumerable methods in place of ```each``` for more efficient code
* Identifying code smells and cleaning up code
* Abstract data collections and how they're used in programming
* How to ask for help when I have one of these moments (this is still a work in progress - both the hair growth and asking for help):

![Brave](http://media.tumblr.com/7fbdeb33c8d6b27efddbd2813fea5c45/tumblr_inline_mmvdkyEQ3o1qz4rgp.gif)
* Bonus thing #11 (not a topic covered at DBc): I learned that I can stay positive in the world's most intense, stressful, and insanely educational environment

------

### Since I know you don't know what the command line is, here are some impressive explanations that you won't understand for 2 of the things I learned.

##### Thing 1: nested arrays
Nested arrays are like magic. They're a very good way to organize data groups into one larger overarching collection. While iterating across them is sometimes more complicated because you have to dive down to the correct level, you can build complex data tables with them. You can also create them in a few different ways, and this is definitely not an exhaustive list:

* Typing everything out manually (snooze)
* Creating an empty array and inserting content based on an index position
* Creating an empty array and pushing content from various sources (see below)
* Using a nested version of ```Array.new(#)```

It does require a little brain bending to navigate the indices, but sometimes lining them up in your code can help to keep everything organized. 

I learned:

* What they are
* Not to be scared of them
* That flattening them is sometimes ok, and actually might be a really good idea
* How to iterate across them
* How to navigate the indices
* How to treat them like a table of data and not just a list
* How to make a Boggle board (!!!!)

##### Thing 2: using Enumerable methods
ENUMERABLES. Someday I will know what all of you do, but for now, I have to settle for plebe-level knowledge. 

Anytime you're using ```#each``` to iterate across an array, ask yourself why and what you're doing inside of the iteration. Are you sorting? Changing? Deleting? Adding? Finding? If you're doing a *thing* (which you probably are), it's likely that you can replace your ```each``` with an Enumerable method. 

I implemented the following Enumerable methods this week after reading the [documentation](http://www.ruby-doc.org/core-1.9.3/Enumerable.html) and revisiting my code (not an exhaustive list): 

```ruby
all?
collect
each_slice
find_all
find_index
first
include?
inject
map!
partition
reject
select
sort
sort_by
to_a
```
------

### Here is some fancy code that I've written that shows you how to make nested arrays and what you can do with them:
*This will print with some formatting - make sure that terminal is big enough on your screen to see the magic!*

```ruby
pawn = Array.new(8) { "Pawn" }
pieces = %w{ Rook Knight Bishop Queen King Bishop Knight Rook }

chessboard_2 = []
chessboard_2 << pieces.map { |p| "B #{p}" } << pawn.map { |p| "B #{p}" }
chessboard_2 << ([" "] * 8) << ([" "] * 8) << ([" "] * 8) << ([" "] * 8)
chessboard_2 << pawn.map { |p| "W #{p}" } << pieces.map { |p| "W #{p}" }

chessboard_2.each do |row| 
  row.each do |square| 
    print "| #{square.center(11, " ")}"
  end 
  print "|\n|#{("-")*103}|\n"
end 
```

### Gotta go back to becoming queen of the internet!

# Love from Nepal,
### Your *favorite* child,
##### Liz