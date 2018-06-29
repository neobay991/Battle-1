require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
   let(:player_1) { double :player }
   let(:player_2) { double :player }

  describe '#player1' do
    it 'it retrieves player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player2' do
    it 'it retrieves player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'starts as Player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      expect(game.switch_turns).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end
end
