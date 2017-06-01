class Book
# write your code here
	attr_reader :title

	def title=(phrase)
		exceptions= ["the", "a", "an", "and", "or", "but", "in", "of"]
		words = phrase.split
		words[0].capitalize! #capitalize first word
		words.each do |word|
			if (!(exceptions.include?(word)))
				word.capitalize!
			end
		end
		@title = words.join(" ")
	end
end
