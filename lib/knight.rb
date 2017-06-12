require_relative 'base'
class Knight < Base

  VECTORS = [[2, 1], [2, -1], [-2, 1], [-2, -1], [-1, 2], [-1, -2], [1, -2], [1, 2]]

  def vectors
    VECTORS
  end
end
