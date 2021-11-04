require 'player'
describe Player do
    describe '#name' do
    subject(:jacob) { Player.new("Jacob") }
    it 'returns the players name' do 
        expect(jacob.name).to eq "Jacob"
    end
end
end