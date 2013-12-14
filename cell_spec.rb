require 'rspec'
require_relative 'cell'

describe Cell do
  it "should have an x and y location" do
    cell = Cell.new(10, 30)

    expect(cell.x).to eql(10)
    expect(cell.y).to eql(30)
  end
end

