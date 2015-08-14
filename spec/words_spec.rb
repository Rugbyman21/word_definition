require('rspec')
require('words')

describe(Words) do
  before() do
    Words.clear()
  end

  describe('#name') do
    it("returns the name of the word") do
      test_words = Words.new({:name => "car", :id => "1"})
      expect(test_words.name()).to(eq("car"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_words = Words.new({:name => "car", :id => "1"})
      expect(test_words.id()).to(eq(1))
    end
  end

  describe('#save') do
    it("adds a word to the array of saved words") do
      test_words = Words.new({:name => "car", :id => "1"})
      test_words.save()
      expect(Words.all()).to(eq([test_words]))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Words.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved words") do
      Words.new({:name => "car", :id => "1"}).save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("return words by its id number") do
      test_words = Words.new({:name => "cars", :id => "1"})
      test_words.save()
      test_words2 = Words.new({:name => "cup", :id =>"2"})
      test_words.save()
      expect(Words.find(test_words.id())).to(eq(test_words))
    end
  end

#   describe('#definitions') do
#     it("adds a definition to the word") do
#       test_words = Words.new({:name => "car", :id => "1"})
#     end
#   end
end
