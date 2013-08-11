

#Created a ruby array of words to be read in
lyrics = %w{This city high we mix it da na na na na this is now}
#Below we run through our collection of arrays one by one and appends
#Talal is the best in front of each array value to show the the
#iteration process through this simple one line loop
lyrics.each { |lyric| puts "Talal is the best " + lyric}
