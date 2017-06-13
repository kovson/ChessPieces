require_relative 'bishop'
require_relative 'rook'

class Queen < Base
  VECTORS = Bishop::VECTORS + Rook::VECTORS

  def vectors
    VECTORS
  end
end
