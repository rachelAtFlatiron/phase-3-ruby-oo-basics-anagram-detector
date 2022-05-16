require 'pry'
# Your code goes here!
class Anagram
    @string
    def initialize(string)
        @string = string
    end 

    def match(array)
        puts @string
        match_array = []
        array.each do |word|
            #binding.pry
            puts "#{word}, #{@string.split("").sort}, #{word.split("").sort} "
            if @string.split('').sort == word.split('').sort 
                match_array << word 
            end 
        end 
        match_array
    end 
end 
listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
