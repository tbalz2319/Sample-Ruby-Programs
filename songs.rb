class Song
  def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end
	#We will be overriding the built in to_s method from ruby
	def to_s
		"Songszz: #{@name}--#{@artist} (#{@duration})"
	end
end

#Inheritance
class KaraokeSong < Song
	def initialize(name, artist, duration, lyrics)
		#Nno need re-initlize variables already initialized in Song
		#super is used to reflect already initialized variables
		#super for superclass
		super(name, artist, duration)
		@lyrics = lyrics
	end
	def to_s
		super + " [#{@lyrics}]"
	end
end

song = Song.new("Bicylops", "Fleck", 260)
puts song.inspect
puts song.to_s
song1 = KaraokeSong.new("My Way", "Sinatra", 255, "And now, the...")
puts song1.to_s
