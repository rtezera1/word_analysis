require 'pry'

class WordAnalysis
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def number_of_words
    words_only = []
    array_of_words = @sentence.split()
    array_of_words.each do |word|
      if word.length > 1
        words_only<<word
      end
    end
    words_only.length
  end

  def number_of_letters
    @array_of_letters = @sentence.split(%r{\s*})
    @array_of_letters.length
  end

  def number_of_symbols
    @sentence.count "-!$%^&*()?_+|@"
  end

  def top_three_common_words
    @array_of_repreated_words = @sentence. split()
    @hash_of_words_and_frequency = @array_of_repreated_words.inject (Hash.new(0)) { |word,frequency| word[frequency] +=1; word}
    @sorted_hash = @hash_of_words_and_frequency.sort_by {|word, frequency| frequency}
    @sorted_three_hash = {}
    @sorted_three_hash[@sorted_hash[-1][0]] = @sorted_hash[-1][1]
    @sorted_three_hash[@sorted_hash[-2][0]] = @sorted_hash[-2][1]
    @sorted_three_hash[@sorted_hash[-3][0]] = @sorted_hash[-3][1]
    @sorted_three_hash
  end

  def top_three_common_letters
    @common_letters = @sentence.split(%r{\s*})
    @letters = @common_letters.inject (Hash.new(0)) { |letter,frequency| letter[frequency] +=1; letter}
     @sorted_letters_hash = @letters.sort_by {|letter, frequency| -frequency}
    @sorted_letter_three_hash = {}
    @sorted_letter_three_hash[@sorted_letters_hash[0][0]] = @sorted_letters_hash[0][1]
    @sorted_letter_three_hash[@sorted_letters_hash[1][0]] = @sorted_letters_hash[1][1]
    @sorted_letter_three_hash[@sorted_letters_hash[2][0]] = @sorted_letters_hash[2][1]
    @sorted_letter_three_hash
  end

  def number_of_words_only_used_once
    @words = @sentence.split()
    @words_hash = @words.inject (Hash.new(0)) { |word,frequency| word[frequency] +=1; word}
    @used_once_words = @words_hash.select { |word, frequency| frequency < 2}
      @used_once_words. each do |word, frequency|
        frequency+=1
        return frequency
      end
  end

  def letters_not_used_in_sentence
    @letters = @sentence.split(%r{\s*})
    @alphabet = ("a".."z").to_a

    @not_included_letters = []
    @letters.each do |letter|
      @alphabet.each do |one_letter|
        if letter != one_letter
          @not_included_letters<<one_letter
        end
      end
    end
    @not_included_letters
  end
end

