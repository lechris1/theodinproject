#write your code here
def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, times=2)
	("#{phrase} "*times).strip
end

def start_of_word(phrase, num)
	phrase[0..num-1]
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	words = phrase.split
	words[0].capitalize! #capitalize first word regardless
	words.each do |word|
		if (!(["the", "and", "or", "over"].include?(word)))
			word.capitalize!
		end
	end
	words.join(" ")
end
