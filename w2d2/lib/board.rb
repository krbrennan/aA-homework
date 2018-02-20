class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player_one = name1
    @player_two = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    # cups.each_index do |idx|
    #   unless (idx == 6) || (idx == 13)
    #     4.times do
    #       cups[idx] << :stone
    #     end
    #   end
    # end
    cups = Array.new(14){Array.new(4,:stone)}
    cups[6] = []
    cups[13] = []
    cups
  end

  def valid_move?(start_pos)
    if !start_pos.between?(1,12)
      raise "Invalid starting cup"
    end

  end

  def make_move(start_pos, current_player_name)
    num_stones = cups.count
    cups[start_pos] = []
    cups[(start_pos + 1)].each do |cup|
      #handle skipping other players cup
      if num_stones == 0
        return
      else
        cup << :stone
      end
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
