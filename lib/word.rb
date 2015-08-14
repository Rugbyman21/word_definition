class Word
  attr_reader(:word)

# @@word = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)

    # @id = @@word.length().+(1)

  end

  define_singleton_method(:all) do
    @@word
  end

  define_method(:save) do
    @@word.push(self)
  end

  define_singleton_method(:clear) do
    @@word = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word.each() do |contacts|
      if word.id().eql?(id)
        found_word = word
      end
    end

  found_word

  end
end
