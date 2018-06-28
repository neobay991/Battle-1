require 'game'

describe Game do
  subject(:game) {Game.new}
  let(:jay) {Player.new('Jay')}
  let(:daniel) {Player.new('Daniel')}

  describe '#attack' do
    it 'damages the player' do
      expect(daniel).to receive(:receive_damage)
      game.attack(daniel)
    end
  end
end
