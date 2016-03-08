def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    words = dot_separated_words.pop
    return false unless is_a_number?(words)
  end

  true
end

dot_separated_ip_address?('10.5.11')
  
    