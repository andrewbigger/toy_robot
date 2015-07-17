require 'spec_helper'

describe Robot do
  let(:opts) { { orientation: :north } }
  subject { Robot.new(opts) }

  describe 'orientation wrappers' do
    before do
      allow(subject).to receive(:next_direction).and_return('new-orientation')
    end

    describe '#left' do
      before { subject.left }

      it 'calls through to change_orientation with :left' do
        expect(subject).to have_received(:next_direction).with(:left)
      end

      it 'sets orientation' do
        orientation = subject.instance_variable_get(:@orientation)
        expect(orientation).to eq 'new-orientation'
      end
    end

    describe '#right' do
      before { subject.right }

      it 'calls through to change_orientation with :right' do
        expect(subject).to have_received(:next_direction).with(:right)
      end

      it 'sets orientation' do
        orientation = subject.instance_variable_get(:@orientation)
        expect(orientation).to eq 'new-orientation'
      end
    end
  end
end
