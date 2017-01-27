require 'ruby_knn'
require 'ruby_knn/cartesian_point'
require 'gruff'

include RubyKNN

RSpec.describe RubyKNN do
  let!(:data) {
    [
      [:test_group_one, [1, 2, 1, 3, 2, 4, 5, 5],
                        [2, 1, 3, 2, 4, 5, 6, 2]],
      [:test_group_two, [9, 9, 8, 10, 9, 11, 12, 12],
                        [9, 8, 10, 9, 11, 12, 13, 9]]
    ]
  }

  describe 'generating graphs' do
    it 'creates a graph with one stranger, and saves it' do
      g = Gruff::Scatter.new
      g.title = 'Testing graphing'
      data.each do |d|
        g.data(d[0], d[1], d[2])
      end
      g.write 'tmp/generate_graph.png'
    end
  end

  describe 'k-nearest neighbour' do
    it 'correctly determines a simple example with only one group and k=1' do
      stranger = CartesianPoint.new(2, 2)
      expect(RubyKNN.k_nearest_neighbour(stranger, 1, data)).to eq :test_group_one
    end
  end
end
