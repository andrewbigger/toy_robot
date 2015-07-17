require 'spec_helper'

describe Behaviour::Movement do
  subject { Robot.new(opts) }

  describe '#next_position' do
    describe 'movement east along the x axis' do
      let(:opts) { { position: { x: 0, y: 0 }, orientation: :east } }

      it 'increments the x position by 1' do
        expect(subject.next_position).to eq(x: 1, y: 0)
      end
    end

    describe 'movement west along the x axis' do
      let(:opts) { { position: { x: 0, y: 0 }, orientation: :west } }

      it 'decrements the x position by 1' do
        expect(subject.next_position).to eq(x: -1, y: 0)
      end
    end

    describe 'movement north along the y axis' do
      let(:opts) { { position: { x: 0, y: 0 }, orientation: :north } }

      it 'increments the y position by 1' do
        expect(subject.next_position).to eq(x: 0, y: 1)
      end
    end

    describe 'movement south along the y axis' do
      let(:opts) { { position: { x: 0, y: 0 }, orientation: :south } }

      it 'increments the y position by 1' do
        expect(subject.next_position).to eq(x: 0, y: -1)
      end
    end
  end
end
