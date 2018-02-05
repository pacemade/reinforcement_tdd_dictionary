require 'pry'

class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(word)
    if word.class == Hash
      @entries.merge!(word)
    else
      @entries.merge!(word => nil)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.has_key?(word)
  end

  def find(word)
    @entries.select {|key, value| key.include?(word)}
  end

end
