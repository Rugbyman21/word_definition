class Words
  attr_reader(:name, :id)

@@words = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)

    @id = @@words.length().+(1)

  end

  define_singleton_method(:all) do
    []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_words = nil
    @@words.each() do |words|
      if words.id().eql?(id)
        found_words = words
      end
    end

  found_words

  end
 end
