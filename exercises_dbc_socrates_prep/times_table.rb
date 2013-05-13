def times_table(rows)
  1.upto(rows) { |num1| 1.upto(rows) { |num2| print "#{num1 * num2}\t" }; puts "\t\n"}
end