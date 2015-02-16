module Roman
  VALUES = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }.freeze

  def self.add(a, b)
    (a + b)
      .chars.sort_by{ |char| VALUES[char] }.reverse.join
      .gsub('IIII', 'IV')
  end
end
