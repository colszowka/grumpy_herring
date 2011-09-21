require "grumpy_herring/version"

module GrumpyHerring
  class WordList < Array
    def grab
      self[rand(length)]
    end
  end
  
  class << self
    def next
      "#{_adjectives.grab} #{_fish.grab}"
    end
    
    def combinations
      _adjectives.length * _fish.length
    end
    
    private
    
      def _adjectives
        @adjectives ||= _word_list :adjectives
      end
      
      def _fish
        @fish ||= _word_list :fish
      end
      
      def _word_list(name)
        WordList.new(File.read(File.join(File.dirname(__FILE__), 'word_lists', "#{name}.txt")).split("\n"))
      rescue => err
        nil
      end
  end
end
