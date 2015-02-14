Given /I add (\w+) and (\w+)/ do |a, b|
  @a = a
  @b = b
end

Then /the result is (\w+)/ do |expected_result|
  result = Roman.add(@a, @b)
  expect(result).to eq expected_result
end
