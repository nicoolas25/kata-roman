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
    roman.chars.each_with_object([]) do |char, values|
      value = VALUES[char]
      if (last_value = values[-1]) && value > last_value
        values.pop
        values << value - last_value
      else
        values << value
      end
    end.inject(0, &:+)
  end

  def self.dump(number)
    result = VALUES.keys.reverse.reduce('') do |result, roman|
      count, number = number.divmod(VALUES[roman])
      result + (roman * count)
    end

    result.
      gsub('IIII', 'IV').
      gsub('CCCC', 'CD').
      gsub('VIV', 'IVV').
      gsub('DCD', 'CDD').
      gsub('VV', 'X').
      gsub('LL', 'C').
      gsub('DD', 'M')
  end
end
