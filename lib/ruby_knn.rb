require 'ruby_knn/euclidean_distance'

include Math

class Array
  def mean
    reduce(&:+) / size
  end
end

module RubyKNN
  def k_nearest_neighbour(stranger_point, k, groups)
    groups.map! do |g|
      [g[0], g[1].zip(g[2]).map{ |p| Math.euclidean_distance(p, stranger_point.coord) }]
    end
    groups.map! do |g|
      [g[0], g[1].sort[0...k].mean]
    end
    groups.sort_by{ |g| g[-1] }[0][0]
  end
end
