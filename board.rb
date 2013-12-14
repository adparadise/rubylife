class Board
  def initialize
    @cells = []
  end

  def add_cell cell
    @cells.push(cell)
  end

  def cell_count
    @cells.size
  end

  def get_cell_at(x, y)
    result = nil
    @cells.each do |c|
      result = c and break if c.x == x && c.y == y
    end
    result
  end
end
