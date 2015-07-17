require 'spec_helper'

describe Table do
  subject { Table.new }

  describe '#on_table?' do
    it 'returns true for position which is on table' do
      expect(subject.on_table?(x: 3, y: 4)).to eq true
    end

    it 'returns false for position which is off table' do
      expect(subject.on_table?(x: -6, y: 6)).to eq false
    end
  end
end
