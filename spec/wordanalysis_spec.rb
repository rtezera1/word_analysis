require_relative "../lib/wordanalysis"
require 'pry'


describe WordAnalysis do
  let(:sentence) { WordAnalysis.new("given a long string or set of paragraphs")}

  describe "number_of_words" do
    it "counts the number of words within a sentence or paragraph"  do
      expect(sentence.number_of_words).to eq(7)
    end
  end

  describe "number_of_letters" do
    it "counts the number of letters within a sentence or paragraph" do
      expect(sentence.number_of_letters).to eq(33)
    end
  end

  describe "number_of_symbols" do
    it "counts the number of symbols within a sentence or paragraph" do
      sentence_with_symbols = WordAnalysis.new("@steve, you're funny!!!! or are you???")
      expect(sentence_with_symbols.number_of_symbols).to eq(8)
    end
  end

  describe "top_three_common_words" do
    it "selects the top three words within a sentence" do
      setence_with_repetetive_words = WordAnalysis.new("is mike really the real mike or is he fake mike is the mike")
      expect(setence_with_repetetive_words.top_three_common_words). to eq({"mike" => 4, "is" => 3, "the" => 2})
    end
  end

  describe "top_three_common_letters" do
    it "selects the top three letters within a sentence" do
      setence_with_repetetive_letters = WordAnalysis.new("llll bbb cc a smith mike")
      expect()

end
