# frozen_string_literal: true

module Scrabble
  module ScoreDictionary
    def self.build_from_legacy(filename)
      Reformatter.new(FileReader.new(filename))
                 .reformat
    end
  end
end
