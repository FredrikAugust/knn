require 'ruby_knn/cartesian_point'

RSpec.describe CartesianPoint do
  context 'variable setting' do
    let!(:point) { CartesianPoint.new(5, 7) }

    it 'sets the x value' do
      expect(point.x).to eq 5
    end

    it 'sets the y value' do
      expect(point.y).to eq 7
    end

    it 'sets the coord value' do
      expect(point.coord).to eq [5, 7]
    end
  end

  context 'comparison' do
    let!(:point_one) { CartesianPoint.new(5, 7) }

    it 'compares to another array' do
      expect(point_one).to be == point_one.coord
    end

    it 'compares to another cartesian point' do
      expect(point_one).to be == point_one
    end

    it 'compares and fails with another not equal coord' do
      expect(point_one).to_not be == CartesianPoint.new(100, 50)
    end
  end
end
