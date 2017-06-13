require_relative 'base'

class King < Base
  VECTORS = [[1, 0], [-1, 0], [0, 1], [0 , -1], [1, 1], [1, -1], [-1, 1], [-1, -1]].freeze

  def vectors
    VECTORS
  end
end
