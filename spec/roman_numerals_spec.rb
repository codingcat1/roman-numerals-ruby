require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it("returns a single roman numeral of a number inputted") do
    roman_numerals(1).should(eq('I'))
  end

  it("returns multiple roman numerals of a number inputted") do
    roman_numerals(3).should(eq("III"))
  end

  it("returns roman numerals of exceptions such as numbers with 4 or 9") do
    roman_numerals(9).should(eq("IX"))
  end

  it("returns roman numerals for numbers with more than one digit") do
    roman_numerals(949).should(eq("CMXLIX"))
  end
end
