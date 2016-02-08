
def take_proc(proc)#takes proc as argument
    [1, 2, 3, 4, 5].each do |number|#runs each number through
        proc.call number#calls proc from below with current number
    end
end

x = Proc.new do |number|#references current number from the block above
    puts "#{number}. Proc being called in the method."#and inserts it here
end

take_proc(x)#uses proc as argument


#**This is a block, being passed a proc, which is a proc