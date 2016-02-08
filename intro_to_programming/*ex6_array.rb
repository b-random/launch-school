words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagrams = {}

words.each do |word|
    key = word.split("").sort.join #split each wors up and arrange the characters in order, then join them together
    if anagrams.has_key?(key)#if anagrams has this key...
        anagrams[key].push(word)#...then push this key in anagram, with the word...
    else                        #... if anagrams does not have this key...
        anagrams[key] = [word] #... then make this word the key...
    end
end


p anagrams ###at this point all the anagrams are grouped into values in a hash called 'anagrams', with the key being irrelovent except for order
anagrams.each { |k, v| p v}#aray form
anagrams.each { |k, v| puts v}#list form