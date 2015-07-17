# Hoeffding Inequality

# Run a computer simulation for flipping 1,000 virtual fair coins.
# Flip each coin independently 10 times.
# Focus on 3 coins as follows:
#   c1 is the first coin flipped,
#   crand is a coin chosen randomly from the 1,000, and
#   cmin is the coin which had the minimum frequency of heads (pick the earlier one in case of a tie).

#   Let ν1, νrand, and νmin be the fraction of heads obtained for the 3 respective coins out of the 10 tosses.

# Run the experiment 100,000 times in order to get a full distribution
# of ν1, νrand, and νmin (note that crand and cmin will change from run to run).

defmodule Coin do
  def iterations do
    1000
  end

  def coins do
    1000
  end

  def flips do
    10
  end

  def flip(coins, rand_coin) do
    Enum.map(1..coins, fn (coin) ->
      call = 0.0
      Enum.map(1..flips, fn (flip) ->
        if :random.uniform > 0.5 do
          heads = 1
        else
          heads = 0
        end
        call = call + heads
      end)
    end)
  end

  def iterate do
    Enum.map(1..iterations, fn (iteration) ->
      rand_coin = :random.uniform(coins)
      IO.puts "."
      flip(coins, rand_coin)
    end)
  end
end
