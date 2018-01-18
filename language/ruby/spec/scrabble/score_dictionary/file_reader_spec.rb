# frozen_string_literal: true

RSpec.describe Scrabble::ScoreDictionary::FileReader do
  subject { described_class.new(default_example_file) }

  describe '#contents' do
    it 'loads the contents of the given file as a Hash' do
      expect(subject.contents).to include(
        1  => %w[A E I O U L N R S T],
        2  => %w[D G],
        3  => %w[B C M P],
        4  => %w[F H V W Y],
        5  => %w[K],
        8  => %w[J X],
        10 => %w[Q Z]
      )
    end
  end
end
