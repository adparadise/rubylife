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

  def number_of_cells_around(x, y)
    count = 0
    coords = [[-1,-1],[0,-1],[1,-1],
              [-1, 0],       [1, 0],
              [-1, 1],[0, 1],[1, 1]]
    coords.each do |coord|
      count += 1 if get_cell_at(coord[0] + x, coord[1] + y)
    end

    count
  end
end
