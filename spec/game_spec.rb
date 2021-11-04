require 'game'
describe Game do
    describe '#attack' do
    subject(:game) { Game.new }
    let(:player_1) { double :player }
    let(:player_2) { double :player }

    it 'Allows the player to receive damage' do
        expect(player_2).to receive(:receive_damage)
        game.attack(player_2)
    end
end
end