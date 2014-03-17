require 'pry'

class WordAnalysis
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def number_of_words                 # miss understood the question but I redid it in the bottom
    words_only = []                   # didn't want to delete it since it is practice
    array_of_words = @sentence.split
    array_of_words.each do |word|
      if word.length > 1
        words_only << word
      end
    end
    words_only.length
  end

  def number_of_letters                             # miss understood the question but I redid it in the bottom
    @array_of_letters = @sentence.split(%r{\s*})    # didn't want to delete it since it is practice
    @array_of_letters.length
  end

  def number_of_symbols
    @sentence.count '-!$%^&*()?_+|@'
  end

  def number_of_each_symbol
    @array_of_symbols = @sentence.split(%r{[\w\s]})
    @array_of_symbols.delete("")
    @symbols_hash = {}
    @array_of_symbols.each do |symbol|
      @symbols_hash[symbol] = symbol.length
    end
    @symbols_hash
    # @symbols = @array_of_symbols.inject (Hash.new(0)) { |symbol, frequency| symbol[frequency] += 1; symbol }
  end

  def top_three_common_words
    @array_of_repreated_words = @sentence.split
    @hash_of_words_and_frequency = @array_of_repreated_words.inject (Hash.new(0)) { |word, frequency| word[frequency] += 1; word }
    @sorted_hash = @hash_of_words_and_frequency.sort_by {|word, frequency| frequency}
    @sorted_three_hash = {}
    @sorted_three_hash[@sorted_hash[-1][0]] = @sorted_hash[-1][1]
    @sorted_three_hash[@sorted_hash[-2][0]] = @sorted_hash[-2][1]
    @sorted_three_hash[@sorted_hash[-3][0]] = @sorted_hash[-3][1]
    @sorted_three_hash
  end

  def top_three_common_letters
    @common_letters = @sentence.split(%r{\s*})
    @letters = @common_letters.inject (Hash.new(0)) { |letter, frequency| letter[frequency] += 1; letter }
     @sorted_letters_hash = @letters.sort_by {|letter, frequency| -frequency}
    @sorted_letter_three_hash = {}
    @sorted_letter_three_hash[@sorted_letters_hash[0][0]] = @sorted_letters_hash[0][1]
    @sorted_letter_three_hash[@sorted_letters_hash[1][0]] = @sorted_letters_hash[1][1]
    @sorted_letter_three_hash[@sorted_letters_hash[2][0]] = @sorted_letters_hash[2][1]
    @sorted_letter_three_hash
  end

  def number_of_words_only_used_once
    @words = @sentence.split
    @words_hash = @words.inject (Hash.new(0)) { |word, frequency| word[frequency] += 1; word }
    @used_once_words = @words_hash.select { |word, frequency| frequency < 2 }

     @total = 0
    @used_once_words.each do |word, frequency|
      @total +=frequency
    end
    @total
  end

  def letters_not_used_in_sentence
    @letters = @sentence.split(%r{\s*})
    @alphabet = ("a".."z").to_a

    @letters.each do |letter|
      @alphabet.each do |one_letter|
        if letter == one_letter
          @alphabet.delete(one_letter)
        end
      end
    end
    @alphabet.length
  end

  def number_of_each_word
     @array_of_words_to_count = @sentence.split
     @words_hash_to_count = @array_of_words_to_count.inject (Hash.new(0)) { |word, frequency| word[frequency] += 1; word }
  end

  def number_of_each_letter
     @array_of_letters_to_count = @sentence.split(%r{\s*})
     @letters_hash_to_count = @array_of_letters_to_count.inject (Hash.new(0)) { |word, frequency| word[frequency] += 1; word }
  end
end
