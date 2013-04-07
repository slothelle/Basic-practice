# Dir[] method

# You can search for specific files: 
Dir["filename.txt"]

# Or for file types:
Dir["*.jpg"]

# But it's  case sensitive, so you'd have to...
Dir["*.{JPG,jpg"]

# These only search for files in your current directory

# To search the parent directory:
Dir["../ *.{JPG,jpg"]

# To do a recursive search of current directory and all subdirectories:
Dir["**/*.{JPG,jpg"]

# To change your working directory
Dir.chdir "path/to/directory"

# This example can't run on my computer
# It's for a Windows machine (womp)

Dir.chdir "C:/Documents and Settings/Katy/PictureInbox"

# Find all of the pictures to be moved
picture_names = Dir["F:/**/*.{JPG,jpg}"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts " "
print "Downloading #{picture_names.length} files: "

picture_number = 1

picture_names.each do |name|
  print "." # Progress bar counter
  
  new_name = if picture_number < 10
    "#{batch_name}0#{picture_number}.jpg"
  else
    "#{batch_name}#{picture_number}.jpg"
  end

  File.rename(name, new_name)

  picture_number = picture_number + 1
end

puts ""
puts "Done, cutie!"