# Create a playlist
# Using shuffle


def shuffle(array)
  array.sort_by{rand}
end

filename = "playlist.m3u"
all_mp3s = shuffle(Dir["/Users/Liz/**/*.{MP3,mp3}"])

File.open(filename, "w") do |f|
  all_mp3s.each do |mp3s|
  f.write "#{mp3s} \n"
  end
end
