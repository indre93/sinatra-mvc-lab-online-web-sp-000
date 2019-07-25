class PigLatinizer
<<<<<<< HEAD

  def piglatinize(word)
=======
  attr_reader :word

  def intialize(word)
>>>>>>> 8e6100658e722f2de8cc33380ab966325cb5a44a
    @word = word

    if @word.include?(" ")
      split_sentence.join(" ")
<<<<<<< HEAD
    elsif vowels.include?(@word[0])
      @word + "way"
    elsif consonants.include?(@word[0]) && consonants.include?(@word[1]) && consonants.include?(@word[2])
      @word[3..-1] + @word[0..2] + "ay"
    elsif consonants.include?(@word[0]) && consonants.include?(@word[1])
      @word[2..-1] + @word[0..1] + "ay"
    elsif consonants.include?(@word[0])
      @word[1..-1] + @word[0] + "ay"
    end

  end

  def split_sentence
    array = @word.split(" ")
    array.map {|word| piglatinize(word)}
  end

  def vowels
    %w[a e i o u A E I O U]
  end

  def consonants
    ('a'..'z').to_a + ('A'..'Z').to_a - vowels
=======
    else
      starts_with_vowel || piglatinize(@word)
    end
  end

  def starts_with_vowel
    vowels = %w[a e i o u A E I O U]
    @word + "way" if vowels.include?(@word[0])
  end

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]
    consonants = ('a'..'z').to_a - vowels

    if consonants.include?(@word[0]) && consonants.include?(@word[1]) && consonants.include?(@word[2])
      @word[3..-1] + @word[0..2] + "ay"
    elsif consonants.include?(@word[0]) && consonants.include?(@word[1])
      @word[2..-1] + @word[0..1] + "ay"
    else consonants.include?(@word[0])
      @word[1..-1] + @word[0] + "ay"
    end
  end

  def split_sentence
    vowels = %w[a e i o u A E I O U]
    consonants = ('a'..'z').to_a - vowels
    array = @word.split(" ")

    array.map do |text|
      if vowels.include?(text[0])
        text + "way"
      elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
        text[3..-1] + text[0..2] + "ay"
      elsif consonants.include?(text[0]) && consonants.include?(text[1])
        text[2..-1] + text[0..1] + "ay"
      elsif consonants.include?(text[0])
        text[1..-1] + text[0] + "ay"
      end
    end
>>>>>>> 8e6100658e722f2de8cc33380ab966325cb5a44a
  end

end
