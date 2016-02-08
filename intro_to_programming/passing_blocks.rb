def take_block(number, &block)#the & tells that the argument is a block, it must be last argument
    block.call(number)
end

number = 4
take_block(number) do |num| #because the method above takes a block, use do/end rather than ()
    puts "Block being called in the method!"
end


