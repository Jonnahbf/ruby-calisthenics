module FunWithStrings
  def palindrome?
    letra = self.downcase.scan(/\w/)
    if(letra == letra.reverse)
      return true
    else
      return false
    end
  end
  def count_words
    wordhash = Hash.new
	self.downcase.scan(/\b\w*\b/) do |word|
		if wordhash.has_key?(word)
			wordhash[word] += 1
		elsif word == ""
		else wordhash[word] = 1
		end
	end
p wordhash
  end

  def anagram_groups

    anagramarray = Array.new

    prueba = self.split(' ')
    if self.empty?
      return anagramarray
    else
    	prueba.each do |aword|
    			temp = []
    		prueba.each do |nextword|
    			if (aword.downcase.split(//).sort == nextword.downcase.split(//).sort)
    				temp.push(nextword)
    			end
    		end
    		anagramarray.push(temp)
    	end
      return anagramarray
    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings

end
