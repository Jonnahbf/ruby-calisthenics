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
    separador = self.split(' ')
    separador.delete(" \t\r\n")

	  separador.each do |word|
  		if wordhash.has_key?(word/i)
  			wordhash[word] += 1
  		elsif word == ""
        return wordhash
  		else wordhash[word] = 1
  		end
	 end
    return wordhash
  end

  def anagram_groups
    anagramarray = Array.new

	#words = words.uniq # Elimina las palabras duplicadas

	self.each do |aword|
			temp = []
		self.each do |nextword|
			if (aword.downcase.split(//).sort == nextword.downcase.split(//).sort) #compare characters
				temp.push(nextword)
			end
		end
		anagramarray.push(temp)
	end
return anagramarray.uniq
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings

end
