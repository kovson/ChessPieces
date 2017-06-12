class Bishop
  attr_reader :position

  VECTORS = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7],
             [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7],
             [-1, 1], [-2, 3], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7],
             [-1, -1], [-2, -2], [-3, -3], [-4, 4], [-5, -5], [-6, -6], [-7, -7]].freeze

  def initialize(position)
    @position = position
    position_validation
    start_position_on_board?
  end
  
  def position_validation
    raise ArgumentError.new("ArgumentError: Pass x_axis value and y_values (example: 'd4')") if @position.length > 2
  end
  
  def start_position_on_board?
    raise ArgumentError.new("Passed values are not included on board - Pass something else") if !(on_board?(x_axis, y_axis))
  end

  def x_axis
    @position[0].upcase.ord - 64  
  end

  def y_axis
    @position[1].to_i
  end
  
  def on_board?(x, y)
    (1..8).cover?(x) && (1..8).cover?(y)
  end

  def possible_moves
    vectors.map { |vector_x, vector_y| [vector_x + x_axis, vector_y + y_axis] }
  end

  def moves_on_board
    possible_moves.select { |move| on_board?(move.first, move.last) }
  end
  
  def exec
    moves_on_board.map { |x, y| [(x + 64).chr, y].join('') }.each { |i| puts i }
  end

  def vectors
    VECTORS
  end
end
