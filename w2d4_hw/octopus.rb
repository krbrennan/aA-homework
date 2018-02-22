  #!/usr/bin/env ruby

  def quadratic_fish(arr)

    sorted = false
    until sorted
      sorted = true
      idx = 0
      while idx < arr.length - 1
        idx2 = idx + 1
        if arr[idx] > arr[idx2]
          arr[idx],arr[idx2] = arr[idx2], arr[idx]
          sorted = false
        end
        idx += 1
      end
    end
    return arr.last
  end

  def n_log_n(arr, &prc)
    prc ||= Proc.new{|x,y| x <=> y}
    return nil if arr.size < 1
    mid_idx = arr.count / 2

    merge(
      n_log_n(arr[0..mid_idx], &prc),
      n_log_n(arr[mid_idx], &prc),
      &prc
    )

    def merge(left, right, &prc)
      merged_arr = []
      prc = Proc.new{|num1, num2| num1 <=> num2}

      until left.empty? || right.empty?
        case prc.call(left[0], right[0])
        when -1
          merged_arr << left.shift
        when 0
          merged_arr << left.shift
        when 1
          merged_arr << right.shift
        end
      end
      merged_arr.concat(left)
      merged_arr.concat(right)
      merged_arr
    end



  end


  quadratic_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])





def slow_dance(target, arr)
  arr.each_index{|idx| retutn idx if arr[idx] == target}
end

def constant_dance(target)
  moves = {
    'up'=> 0,
    'right-up'=> 1,
    'right' => 2,
    'right-down'=>3,
    'down'=>4,
    'left-down'=>5,
    'left'=>6,
    'left-up'=>7
  }
  moves[target]
end

slow_dance('up', ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])
