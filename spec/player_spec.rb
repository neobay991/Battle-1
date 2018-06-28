describe Player do
  subject(:jay) {described_class.new('Jay')}

  describe '#initialize' do
      it 'returns its own name' do
        expect(jay.name).to eq "Jay"
      end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(jay.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
