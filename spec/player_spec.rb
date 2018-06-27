describe Player do

subject(:jay) {described_class.new('Jay')}

  it 'returns its own name' do
    expect(jay.name).to eq "Jay"
  end

end
