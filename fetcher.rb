urlarray = []

File.new("m3u8.m3u", "r").each do
	|line| 
	if line =~ /^[http]/
		
		theurl = line.split(/[\?]/)[0]
		
		if theurl != urlarray.last
			urlarray.push(theurl)
		end
	end
end

urlarray.each_index do |index|
	puts "lh-%.2i.flv | #{urlarray[index]}" %index
end
