class CartesianPoint
  attr_reader(:coord, :x, :y)

  def initialize(x, y)
    # bit hacky; basically assigns @coord to [@x, @y]
    *@coord = (@x, @y = x, y)
  end

  def ==(value)
    if value.class == self.class
      @coord == value.coord
    else
      @coord == value
    end
  end
end
