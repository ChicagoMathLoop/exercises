# frozen_string_literal: true

RSpec.describe Scrabble::ScoreDictionary::Reformatter do
  subject { described_class.new file_reader }

  let(:file_reader) do
    instance_double(Scrabble::ScoreDictionary::FileReader,
                    contents: {
                      1  => %w[A E I O U L N R S T],
                      2  => %w[D G],
                      3  => %w[B C M P],
                      4  => %w[F H V W Y],
                      5  => %w[K],
                      8  => %w[J X],
                      10 => %w[Q Z]
                    })
  end

  it 'transforms the reader contents into standard Hash format' do
    expect(subject.reformat).to include(
      'A' => 1,
      'B' => 3,
      'C' => 3,
      'D' => 2,
      'E' => 1,
      'F' => 4,
      'G' => 2,
      'H' => 4,
      'I' => 1,
      'J' => 8,
      'K' => 5,
      'L' => 1,
      'M' => 3,
      'N' => 1,
      'O' => 1,
      'P' => 3,
      'Q' => 10,
      'R' => 1,
      'S' => 1,
      'T' => 1,
      'U' => 1,
      'V' => 4,
      'W' => 4,
      'X' => 8,
      'Y' => 4,
      'Z' => 10
    )
  end
end
