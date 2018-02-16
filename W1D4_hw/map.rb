require 'pry'

class Map
  #methods:
    #assign(k,v)
    #lookup(k)
    #remove(k)
    #show
    #assign can be used to update the value or create new k-v pair
    #I must check if key already exists, reassign value if it does

    attr_reader :map

    def initialize
      @map = []
    end

    def assign(k,v)
      #check if exists
      #if it does, change value
      #if it doesn't, create new k,v pair

      pair_idx = @map.index{ |pair| pair[0] == k}
      if pair_idx
        @map[pair_idx][1] = v
      else
        @map.push([k,v])
      end
      [k,v]
    end

    def lookup(k)
      @map.each{|pair| return pair[1] if pair[0] == k}
    end

    def remove(k)
      @map.reject!{ |pair| pair if pair[0] == k }
    end

    def show
      deep_dup(@map)
    end

    def deep_dup(map)
      map.map do |pair|
        if pair.is_a?(Array)
          deep_dup(pair)
        else
          pair
        end
      end
    end
end
