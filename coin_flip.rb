# Hoeffding Inequality

class Coin
  def initialise
    @iterations = 1000
    @coins = 1000
    @flips = 10

    @v_first = 0
    @v_min = 0
    @v_rand = 0
    @first = 0
    @rand = 0
  end

  def iterate
    (1..@iterations).each do
      min = 1
      rand_coin = Random.rand(@coins)
      (1..@coins).each do |coin|
        call = 0.0
        (1..flips).each do
          r = Random.rand.round
          if r == 0
            heads = 1
          else
            heads = 0
          end
          call += heads
        end
        first = (call / flips) if coin == 1
        if coin == rand_coin
          rand = (call / flips)
          #p "Random Coin #{rand_coin} was Heads #{call} times or #{rand}"
        end
        min = (call / flips) if (call / flips) < min
      end
      v_first += first
      v_rand += rand
      v_min += min
    end

    p "vfirst: #{v_first / iterations}"
    p "vrand: #{v_rand / iterations}"
    p "vmin: #{v_min / iterations}"
  end

end
