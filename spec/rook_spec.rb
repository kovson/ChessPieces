require_relative '.././lib/rook'

RSpec.describe Rook do
  let(:rook) { Rook.new('a1') }
  
  describe '#vectors' do
    it 'returns array of vectors' do
      expect(rook.vectors).to equal(Rook::VECTORS)
    end
  end

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(rook.possible_moves).to match_array([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1], [0, 1], [-1, 1], [-2, 1], [-3, 1], [-4, 1], [-5, 1], [-6, 1], [1, 0], [1, -1], [1, -2], [1, -3], [1, -4], [1, -5], [1, -6]])
    end
  end

  describe '#moves_on_board' do
    it 'returns array of moves located on board' do
      expect(rook.moves_on_board).to match_array([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1]])
    end
  end
end
