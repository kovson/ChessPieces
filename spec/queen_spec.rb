require_relative '.././lib/queen'

RSpec.describe Queen do
  let(:queen) { Queen.new('a1') }

  describe '#vectors' do
    it 'returns array of vectors' do
      expect(queen.vectors).to equal(Queen::VECTORS)
    end
  end

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(queen.possible_moves).to match_array([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], [2, 1], [3, 1],
                                                   [4, 1], [5, 1], [6, 1], [7, 1], [8, 1], [0, 1], [-1, 1], [-2, 1], [-3, 1],
                                                   [-4, 1], [-5, 1], [-6, 1], [1, 0], [1, -1], [1, -2], [1, -3], [1, -4],
                                                   [1, -5], [1, -6], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [8, 8], [2, 0],
                                                   [3, -1], [4, -2], [5, -3], [6, -4], [7, -5], [8, -6], [0, 2], [-1, 4], [-2, 4], [-3, 5],
                                                   [-4, 6], [-5, 7], [-6, 8], [0, 0], [-1, -1], [-2, -2], [-3, 5], [-4, -4], [-5, -5], [-6, -6]])
    end
  end

  describe '#moves_on_board' do
    it 'returns array of moves located on board' do
      expect(queen.moves_on_board).to match_array([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1],
                                                   [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [8, 8]])
    end
  end
end
