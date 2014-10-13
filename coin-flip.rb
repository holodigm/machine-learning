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

n = 100000

v_first = 0
v_min = 0
v_rand = 0

for iter in 1..n

  rand_coin = Random.rand(1000)
  min = 1.0

  for coin in 1..1000
    s = coin

    i = 0.0000
    for flip in 1..10
      if rand.round == 0
        flip = 1
      else
        flip = 0
      end
      i += flip
    end
    first = i / 10 if s == 1
    rand = i / 10 if s == rand_coin
    min = i / 10 if (i / 10) < min
  end
  v_first = v_first + first
  v_rand - v_rand + rand
  v_min = v_min + min
  print '.'
  # p v_min / iter
end

p "vmin: #{v_min / n}"
p "vmin: #{v_min / n}"
p "vmin: #{v_min / n}"




