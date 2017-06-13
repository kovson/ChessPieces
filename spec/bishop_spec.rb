require_relative '.././lib/bishop'

RSpec.describe Bishop do
  let(:bishop) { Bishop.new('d5') }
  
  describe '#vectors' do
    it 'returns array of vectors' do
      expect(bishop.vectors).to equal(Bishop::VECTORS)
    end
  end

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(bishop.possible_moves).to eq([[5, 6], [6, 7], [7, 8], [8, 9], [9, 10], [10, 11], 
                                           [11, 12], [5, 4], [6, 3], [7, 2], [8, 1], [9, 0], [10, -1],
                                           [11, -2], [3, 6], [2, 8], [1, 8], [0, 9], [-1, 10], [-2, 11], [-3, 12],
                                           [3, 4], [2, 3], [1, 2], [0, 9], [-1, 0], [-2, -1], [-3, -2]
                                          ])
    end
  end

  describe '#moves_on_board' do
    it 'returns array of moves located on board' do
      expect(bishop.moves_on_board).to eq([[5, 6], [6, 7], [7, 8], [5, 4], [6, 3], [7, 2],
                                           [8, 1], [3, 6], [2, 8], [1, 8], [3, 4], [2, 3], [1, 2]
                                          ])
    end
  end
end
