# frozen_string_literal: true

module Scrabble
  class Scoring
    attr_reader :dictionary

    def initialize(dictionary = {})
      @dictionary = dictionary
    end

    def score_letter(letter)
      # your code here
    end
  end
end
