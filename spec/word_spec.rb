require('rspec')
require('word')

# describe(Word) do
#   before() do
#     Word.clear()
#   end

  describe('#word') do
    it('returns the word in the dictionary') do
      test_word = Word.new({:name => "car"})
      expect(test_word.name()).to(eq("car"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new({:word => "car"})
      expect(test_word.id()).to(eq(1))
    end
  end




# end
