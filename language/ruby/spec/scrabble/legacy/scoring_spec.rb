RSpec.describe Scrabble::Legacy::Scoring do
  subject { described_class.new(default_example_file) }

  describe '#score_letter' do
    context 'in English' do
      %W(A E I O U L N R S T).each do |letter|
        it "scores a #{letter} as 1 point" do
          expect(subject.score_letter(letter))
            .to eq 1
        end
      end

      %W(D G).each do |letter|
        it "scores a #{letter} as 2 point" do
          expect(subject.score_letter(letter))
            .to eq 2
        end
      end

      %W(B C M P).each do |letter|
        it "scores a #{letter} as 3 point" do
          expect(subject.score_letter(letter))
            .to eq 3
        end
      end

      %W(F H V W Y).each do |letter|
        it "scores a #{letter} as 4 point" do
          expect(subject.score_letter(letter))
            .to eq 4
        end
      end

      %W(K).each do |letter|
        it "scores a #{letter} as 5 point" do
          expect(subject.score_letter(letter))
            .to eq 5
        end
      end

      %W(J X).each do |letter|
        it "scores a #{letter} as 8 point" do
          expect(subject.score_letter(letter))
            .to eq 8
        end
      end

      %W(Q Z).each do |letter|
        it "scores a #{letter} as 10 point" do
          expect(subject.score_letter(letter))
            .to eq 10
        end
      end
    end
  end
end