def roman_numerals(input)
  result = ""

  roman_numeral_key = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M"}

  new_roman_numeral_key = Hash[roman_numeral_key.to_a.reverse]

  inCounter = 1
  romanCounter = 1

  0.upto(input) do
    if input > 3999
      result = "Roman numerals not available above 3999"
    else input > 0
      inCounter += 1
      new_roman_numeral_key.each do |number, roman_numeral|
      romanCounter += 1
        if input >= number
          result += roman_numeral
          input -= number
          break
        end
      end
    end
  end
result
end
puts roman_numerals(3999)

