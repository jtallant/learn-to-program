def convert_to_roman_numerals(int)  
  [1000, 500, 100, 50, 10, 5, 1].each.with_object('') do |numeral_increment, numerals|
    while int - numeral_increment >= 0
      numerals << get_numeral_value(numeral_increment)
      int -= numeral_increment
    end
  end
end

def get_numeral_value(int)
  case int
    when 1000 then 'M'
    when 500  then 'D'
    when 100  then 'C'
    when 50   then 'L'
    when 10   then 'X'
    when 5    then 'V'
    else 'I'
  end
end

require 'rspec'

describe :convert_to_roman_numerals do

  it 'accepts an integer and returns a string' do
    expect(convert_to_roman_numerals(100).class).to eq(String)
  end

  it 'appends numeral values to make a number' do
    expect(convert_to_roman_numerals(1001)).to eq('MI')
  end

  it "converts 1's to I's" do
    expect(convert_to_roman_numerals(4)).to eq('IIII')
  end

  it "converts 5 to V" do
    expect(convert_to_roman_numerals(5)).to eq('V')
  end

  it 'converts 10 to X' do
    expect(convert_to_roman_numerals(10)).to eq('X')
  end

  it "converts 50 to L" do
    expect(convert_to_roman_numerals(50)).to eq('L')
  end

  it 'converts 100 to C' do
    expect(convert_to_roman_numerals(100)).to eq('C')
  end

  it 'converts 500 to D' do
    expect(convert_to_roman_numerals(500)).to eq('D')
  end

  it 'converts 1000 to M' do
    expect(convert_to_roman_numerals(1000)).to eq('M')
  end

  it 'converts complex numbers to numerals' do
    expect(convert_to_roman_numerals(1599)).to eq('MDLXXXXVIIII')
  end

end