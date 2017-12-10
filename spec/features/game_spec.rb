require 'game'

describe Game do
  subject(:game) { Game.new('Varun') }

  describe '#choices' do

    it 'offers a selection of choices' do
      expect(game.choices).to include(:rock, :paper, :scissors)
    end

  end
end
