require "game.rb"

feature "switch turns" do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Jay's turn"
    end

    scenario 'after player 1 has attacked' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Jay's turn"
      expect(page).to have_content "Daniel's turn"
    end
  end
end
