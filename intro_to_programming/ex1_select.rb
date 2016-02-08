family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
imm =  family.select { |x, y| x == :brothers || x == :sisters}

p imm.values.flatten
          