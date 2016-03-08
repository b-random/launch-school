def digits_of_number
  digits = []
  (0..9).each { |digit| digits << digit.to_s }
  ('a'..'f').each { |digit| digits << digit.to_s }
  
  the_number = ''
  number_grouping = [2, 4, 4, 22]
  number_grouping.each_with_index do |number, index|
    number.times { the_number += digits.sample }
    the_number += '-' unless index == number_grouping.length - 1
  end
  p the_number
end  
  
digits_of_number
  