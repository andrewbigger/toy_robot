require 'spec_helper'

describe 'Toy Robot' do
  let(:scenario_position)    { { x: 0, y: 0 } }
  let(:scenario_orientation) { :north }

  subject do
    Robot.new(position: scenario_position, orientation: scenario_orientation)
  end

  before { allow($stdout).to receive(:puts) }

  describe 'Scenario A' do
    # PLACE 0,0,NORTH
    # MOVE
    # REPORT
    # Output: 0,1,NORTH

    before do
      subject.move
      subject.report
    end

    it 'has correct output' do
      expect($stdout).to have_received(:puts).with('0, 1, NORTH')
    end
  end

  describe 'Scenario B' do
    # PLACE 0,0,NORTH
    # LEFT
    # REPORT
    # Output: 0,0,WEST

    before do
      subject.left
      subject.report
    end

    it 'has correct output' do
      expect($stdout).to have_received(:puts).with('0, 0, WEST')
    end
  end

  describe 'Scenario C' do
    # PLACE 1,2,EAST
    # MOVE
    # MOVE
    # LEFT
    # MOVE
    # REPORT
    # Output: 3,3,NORTH

    let(:scenario_position)    { { x: 1, y: 2 } }
    let(:scenario_orientation) { :east }

    before do
      subject.move
      subject.move
      subject.left
      subject.move
      subject.report
    end

    it 'has correct output' do
      expect($stdout).to have_received(:puts).with('3, 3, NORTH')
    end
  end
end
