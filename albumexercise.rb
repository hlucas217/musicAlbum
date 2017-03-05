
badplus_hash = {
	"album_title:" => "Give", 
	"artist:" => "The Bad Plus",
	"year:" => 2004, 
	"label:" => "Columbia", 
	"number_tracks:" => 6, 
	"track_titles:" => ["1979 Semi-Finalist", "Cheney Pinata", "Street Woman",
	 "And Here We Test Our Powers of Observation", "Frog and Toad", "Velouria"]
}

my_file = File.read("albumexercise.txt")

class Albumclass

	def list_albuminfo
		puts @album_info
	end

	def album_fill (album_hash, template_string)
		album_hash.each_pair do |key, value|
			template_string.gsub!(key, value.to_s)
			@album_info = template_string
		end
	end
end

new_album = Albumclass.new
new_album.album_fill(badplus_hash, my_file)
new_album.list_albuminfo
