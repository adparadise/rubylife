require 'rspec'

require_relative 'board'
require_relative 'cell'

describe Board do
  it "should be able to get the cell at a location" do
    board = Board.new
    cell = Cell.new 1, 1

    board.add_cell cell
    expect(board.get_cell_at(1, 1)).to eql(cell)
  end

  it "should be able to add a cell" do
    board = Board.new
    cell = Cell.new 1, 1

    board.add_cell cell

    expect(board.cell_count).to eq(1)
  end
end

