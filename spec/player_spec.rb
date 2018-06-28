describe Player do
  subject(:jay) {described_class.new('Jay')}
  subject(:daniel) {described_class.new('Daniel')}

  describe '#name' do
    it 'returns the name' do
      expect(jay.name).to eq 'Jay'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(jay.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(daniel).to receive(:receive_damage)
      jay.attack(daniel)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { jay.receive_damage }.to change { jay.hit_points }.by(-10)
    end
  end
end
