# machine-learning


## Hoeffding Inequality

Run a computer simulation for flipping 1,000 virtual fair coins.
Flip each coin independently 10 times.
Focus on 3 coins as follows:
**  c1 is the first coin flipped,
**  crand is a coin chosen randomly from the 1,000, and
**  cmin is the coin which had the minimum frequency of heads (pick the earlier one in case of a tie).

* Let ν1, νrand, and νmin be the fraction of heads obtained for the 3 respective coins out of the 10 tosses.

Run the experiment 100,000 times in order to get a full distribution of ν1, νrand, and νmin (note that crand and cmin will change from run to run).
