require 'spec_helper'

describe Robot do
  let(:opts) { { position: { x: 1, y: 1 }, orientation: :north } }
  subject { Robot.new(opts) }

  describe 'orientation wrappers' do
    before do
      allow_any_instance_of(Behaviour::Pivot)
        .to receive(:next_direction)
        .and_return('new-orientation')
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

  describe '#move' do
    context 'when no where near falling off table' do
      before do
        allow_any_instance_of(Table).to receive(:on_table?).and_return(true)
        allow_any_instance_of(Behaviour::Movement)
          .to receive(:next_position)
          .and_return('new-position')
        subject.move
      end

      it 'does set new position' do
        position = subject.instance_variable_get(:@position)
        expect(position).to eq 'new-position'
      end
    end

    context 'about to fall off table' do
      before do
        allow_any_instance_of(Table).to receive(:on_table?).and_return(false)
        subject.move
      end

      it 'does not set new position' do
        position = subject.instance_variable_get(:@position)
        expect(position).to eq(x: 1, y: 1)
      end
    end
  end
end
