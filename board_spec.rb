require 'rspec'

require_relative 'board'
require_relative 'cell'

describe Board do

  let(:board) { Board.new }

  it "should be able to get the cell at a location" do
    cell = Cell.new 1, 1

    board.add_cell cell

    expect(board.get_cell_at(1, 1)).to eql(cell)
  end

  it "should be able to add a cell" do
    cell = Cell.new 1, 1

    board.add_cell cell

    expect(board.cell_count).to eq(1)
  end

  it "should be able to count the number of cells around a location" do
    cell_1 = Cell.new 1,2
    cell_2 = Cell.new 1,1
    cell_3 = Cell.new 1,9

    expect(board.number_of_cells_around(0,1)).to eq(2)
  end

end

