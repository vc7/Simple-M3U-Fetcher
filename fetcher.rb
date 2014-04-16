url_array = []
file = File.new("m3u8.m3u", "r")

file.each do
	|line| 
	if line =~ /^[http]/
		
		url_string = line.split(/[\?]/)[0]
		
		if url_string != url_array.last
			url_array.push(url_string)
		end
	end
end

file.close

url_array.each_index do |index|
	puts "lh-%.2i.flv | #{url_array[index]}" %index
end
