require_relative '.././lib/king'

RSpec.describe King do
  let(:king) { King.new('a1') }
  
  describe '#vectors' do
    it 'returns array of vectors' do
      expect(king.vectors).to equal(King::VECTORS)
    end
  end

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(king.possible_moves).to match_array([[2, 1], [0, 1], [1, 2], [1, 0], [2, 2], [2, 0], [0, 2], [0, 0]])
    end
  end

  describe '#moves_on_board' do
    it 'returns array of moves located on board' do
      expect(king.moves_on_board).to match_array([[2, 1], [1, 2], [2, 2]])
    end
  end
end
