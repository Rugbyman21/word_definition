require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end

  describe("#word") do
    it("returns the word in the dictionary") do
      test_word = Word.new({:word => "car" :id => "1"})
      expect(test_word.word()).to(eq("car"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new({:word => "car" :id => "1"})
      expect(test_word.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Word.new({:word => "car" :id => "1"}).save()
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      test_word = Word.new({:word => "car" :id => "1"})
      test_word.save()
      test_word2 = Word.new({:word => "cup" :id => "2"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end
