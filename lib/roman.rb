module Roman
  def self.add(a, b)
    (a + b).gsub('IIII', 'IV')
  end
end
