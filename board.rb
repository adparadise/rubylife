class Board
  def initialize
    @cell_count = 0
  end

  def add_cell cell
    @cell_count += 1
  end

  def cell_count
    @cell_count
  end
end
