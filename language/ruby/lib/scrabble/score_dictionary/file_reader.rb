# frozen_string_literal: true

module Scrabble
  module ScoreDictionary
    class FileReader
      attr_reader :filename, :contents

      def initialize(filename)
        @filename = filename
        @contents = YAML.load_file(filename)
      end
    end
  end
end
