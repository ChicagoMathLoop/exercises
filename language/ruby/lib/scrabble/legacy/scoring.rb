# frozen_string_literal: true

module Scrabble
  module Legacy
    class Scoring
      attr_reader :dictionary

      def initialize(filename)
        @dictionary = YAML.load_file(filename)
      end

      def score_letter(letter)
        dictionary.find do |_, letters|
          letters.include?(letter)
        end.first || 0
      end
    end
  end
end
