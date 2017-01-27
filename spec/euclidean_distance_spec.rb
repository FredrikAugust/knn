require 'ruby_knn/euclidean_distance'

include Math

RSpec.describe Math, '#euclidean_distance' do
  it 'works for two points where all values are positive floats' do
    expect(Math.euclidean_distance([1.0, 1.0], [10.0, 10.0], 2)).to eq 12.73
  end

  it 'works if the user provides integers instead' do
    expect(Math.euclidean_distance([1, 1], [10, 10], 2)).to eq 12.73
  end

  it 'works if the user wants 100% accuracy' do
    expect(Math.euclidean_distance([1, 1], [10, 10])).to eq(
      Math.sqrt((1 - 10).abs2 + (1 - 10).abs2)
    )
  end
end
