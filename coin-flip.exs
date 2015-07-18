# Hoeffding Inequality

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
      flip(coins, rand_coin)
    end)
  end
end
