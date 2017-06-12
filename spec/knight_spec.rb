require_relative '.././lib/knight'

RSpec.describe Knight do
  let(:knight) { Knight.new('d5') }
  
  describe '#vectors' do
    it 'returns array of vectors' do
      expect(knight.vectors).to equal(Knight::VECTORS)
    end
  end

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(knight.possible_moves).to match_array([[5, 7], [6, 6], [6, 4], [5, 3], [3, 3], [2, 4], [2, 6], [3, 7]])
    end
  end

  describe '#moves_on_board' do
    it 'returns array of moves located on board' do
      expect(knight.moves_on_board).to match_array([[5, 7], [6, 6], [6, 4], [5, 3], [3, 3], [2, 4], [2, 6], [3, 7]])
    end
  end
end
