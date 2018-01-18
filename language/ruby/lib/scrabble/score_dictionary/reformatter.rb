# frozen_string_literal: true

module Scrabble
  module ScoreDictionary
    class Reformatter
      attr_reader :file_reader

      def initialize(file_reader)
        @file_reader = file_reader
      end

      def reformat
        file_reader.contents.each_with_object({}) do |(score, letters), dictionary|
          letters.each do |letter|
            dictionary[letter] = score
          end
        end
      end
    end
  end
end
