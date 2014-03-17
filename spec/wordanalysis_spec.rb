require_relative '../lib/wordanalysis'
require 'pry'

describe WordAnalysis do
  let(:sentence) { WordAnalysis.new('given a long string or set of paragraphs') }

  describe 'number_of_words' do
    it 'counts the number of words within a sentence or paragraph'  do     # miss understood the question but I redid it in the bottom
      expect(sentence.number_of_words).to eq(7)                            # didn't want to delete it since it is practice
    end
  end

  describe 'number_of_letters' do
    it 'counts the number of letters within a sentence or paragraph' do     # miss understood the question but I redid it in the bottom
      expect(sentence.number_of_letters).to eq(33)                          # didn't want to delete it since it is practice
    end
  end

  describe 'number_of_symbols' do
    it 'counts the number of symbols within a sentence or paragraph' do
      sentence_with_symbols = WordAnalysis.new("@steve, you're funny!!!! or are you???")
      expect(sentence_with_symbols.number_of_symbols).to eq(8)
    end
  end

  describe 'number_of_each_symbols' do
    it 'counts the number of each symbol within a sentence or paragraph' do
      sentence_with_symbols = WordAnalysis.new("@steve, you're funny!!!! or are you???")
      expect(sentence_with_symbols.number_of_each_symbol).to eq('@' => 1, ',' => 1, "'" => 1,  '!!!!' => 4, '???' => 3)
    end
  end

  describe 'top_three_common_words' do
    it 'selects the top three words within a sentence' do
      setence_with_repetetive_words = WordAnalysis.new('is mike really the real mike or is he fake mike is the mike')
      expect(setence_with_repetetive_words.top_three_common_words). to eq({ 'mike' => 4, 'is' => 3, 'the' => 2 })
    end
  end

  describe 'top_three_common_letters' do
    it 'selects the top three letters within a sentence' do
      setence_with_repetetive_letters = WordAnalysis.new('llll bbb cc a smith mike')
      expect(setence_with_repetetive_letters.top_three_common_letters).to eq('l' => 4, 'b' => 3, 'c' => 2)
    end
  end

  describe 'number_of_words_only_used_once' do
    it 'selects the number of words only used once' do
      setence_with_repetetive_words = WordAnalysis.new('is mike really the real mike or is he fake mike is the mike')
      expect(setence_with_repetetive_words.number_of_words_only_used_once).to eq(5)
    end
  end

  describe 'letters_not_used_in_sentence' do
    it 'gives the letters not used in a sentence' do
      words_used = WordAnalysis.new('mike szeth')
      expect(words_used.letters_not_used_in_sentence).to eq(18)
    end
  end

    describe 'number_of_each_word' do
      it 'gives the number of times each word used in a sentence' do
        words_used = WordAnalysis.new('mike mike szeth is the more the marier szeth')
        expect(words_used.number_of_each_word). to eq('mike' => 2, 'szeth' => 2, 'is' => 1, 'the' => 2, 'more' => 1, 'marier' => 1)
      end
    end

    describe 'number_of_each_letter' do
      it 'gives the number of times each letter used in a sentence' do
        sentence_used = WordAnalysis.new('mike mike szeth')
        expect(sentence_used.number_of_each_letter). to eq('m' => 2, 'i' => 2, 'k' => 2, 'e' => 3, 's' => 1, 'z' => 1, 't' => 1, 'h' => 1)
      end
    end
end
