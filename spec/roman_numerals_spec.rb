require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it("returns a single roman numeral of a number inputted") do
    roman_numerals(1).should(eq('I'))
  end

  it("returns multiple roman numerals of a number inputted") do
    roman_numerals(3).should(eq("III"))
  end
end
