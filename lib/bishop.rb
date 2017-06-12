class Bishop
  attr_reader :position

  VECTORS = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7],
             [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7],
             [-1, 1], [-2, 3], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7],
             [-1, -1], [-2, -2], [-3, -3], [-4, 4], [-5, -5], [-6, -6], [-7, -7]].freeze

  def initialize(position)
    @position = position
    @x = position[0].upcase
    @y = position[1]
  end

  def x_axis
    @x.ord - 64  
  end

  def y_axis
    @y.to_i
  end

  def on_board?(x, y)
    (1..8).include?(x) && (1..8).include?(y)
  end

  def possible_moves
    vectors.map { |vector_x, vector_y| [vector_x + x_axis, vector_y + y_axis] }
  end

  def moves_on_board
    possible_moves.select { |move| on_board?(move.first, move.last) }
  end

  def vectors
    VECTORS
  end
end
