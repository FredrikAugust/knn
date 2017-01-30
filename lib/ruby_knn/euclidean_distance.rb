module Math
  def euclidean_distance(point1, point2, precision = nil)
    d = sqrt(point1.zip(point2).reduce(0) { |sum, p| sum + (p[0] - p[1]) ** 2 })
    !precision.nil? ? d.round(precision) : d
  end
end
