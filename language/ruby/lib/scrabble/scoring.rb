# frozen_string_literal: true

module Scrabble
  class Scoring
    attr_reader :dictionary

    def initialize(dictionary = {})
      @dictionary = dictionary
    end

    def score_letter(letter)
      dictionary.fetch(letter, 0)
    end
  end
end
