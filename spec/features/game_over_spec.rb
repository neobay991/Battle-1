require "./app.rb"

feature 'Game over' do
  context 'when player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      10.times { attack_and_confirm }
      # allow(Kernel).to receive(:rand).and_return(60)
    end

  # As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first
    scenario 'player 2 loses' do
      click_button'Attack >>'
      expect(page).to have_content 'Daniel loses!'
    end
   end
end
