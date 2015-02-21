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
    dump(parse(a) + parse(b))
  end

  def self.parse(roman)
    roman.chars.map{ |char| VALUES[char] }.inject(0, &:+)
  end

  def self.dump(number)
    result = ''
    q, r = number.divmod(10)
    result += 'X' * q
    q, r = r.divmod(5)
    result += 'X' * q
    result += 'I' * r
    result.gsub('IIII', 'IV')
  end
end
