require 'spec_helper'

describe Behaviour::Pivot do
  subject { Robot.new(opts) }

  describe '#next_direction' do
    describe 'left' do
      let(:opts) { { orientation: :east } }

      it 'sets orientation to north' do
        expect(subject.next_direction(:left)).to eq :north
      end
    end

    describe 'right' do
      let(:opts) { { orientation: :south } }

      it 'sets orientation to west' do
        expect(subject.next_direction(:right)).to eq :west
      end
    end
  end
end
