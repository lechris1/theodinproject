#write your code here
def translate(phrase)
	words = phrase.split
	words.map! do |word|
		translate_word(word)
	end
	words.join(" ")
end

def translate_word(word)
	index = first_vowel(word)
	if (index == 0) #vowel sound first
		word+"ay"
	elsif (word[index-1..index]=="qu") #qu as consonant
		word[index+1..-1]+word[0..index]+"ay"
	else #consonant sound first
		word[index..-1]+word[0..index-1]+"ay"
	end
end

def first_vowel(word)
	index = word.length-1
	vowels = ["a", "e", "i", "o", "u"]
	#find first vowel in word
	vowels.each do |vowel|
		new_index = word.index(vowel)
		if (new_index)
			index = (new_index < index ? new_index : index)
		end
	end
	return index
end
