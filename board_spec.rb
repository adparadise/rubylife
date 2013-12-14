require 'rspec'

describe Board do

  xit "should be able to get the cell at a location" do
  end

   it "should be able to add a cell" do
     board = Board.new
     cell = Cell.new 1, 1

     board.add_cell cell

     expect(board.cell_count).to eq(1)
   end
end

