require 'ruby_knn'
require 'gruff'

RSpec.describe RubyKNN do
  let!(:data) {
    [
      [:test_group_one, [1, 2, 1, 3, 2, 4, 5, 5],
                        [2, 1, 3, 2, 4, 5, 6, 2]],
      [:test_group_two, [9, 9, 8, 10, 9, 11, 12, 12],
                        [9, 8, 10, 9, 11, 12, 13, 9]],
      [:stranger,       [3],
                        [4]]
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
end
