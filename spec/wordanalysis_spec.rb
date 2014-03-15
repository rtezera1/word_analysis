require_relative '../lib/wordanalysis'



describe WordAnalysis do
  let(:word) { WordAnalysis.new("Given a long string or set of paragraphs")}

  describe word_number do
    it "counts the number of words within a sentence or paragraph"  do
      expect(word.word_number). to eq(7)
    end
  end
end
