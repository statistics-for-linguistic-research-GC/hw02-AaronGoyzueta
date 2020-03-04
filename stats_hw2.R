# Part 1
x <- 501
n <- 501 + 1859

binom.test(x, n, .5)

# Part 2
path <- "/Users/aarongoyzueta/Desktop/CUNY semester 2/Stats w: Kyle/HWS/HW 2/hw02-AaronGoyzueta/PTB.tsv"
df <- read.table(path, sep="\t", header=TRUE)

Stan.correct <- df$gold.tag == df$Stanford.tag
Nlp.correct <- df$gold.tag == df$NLP4J.tag

x1 <- sum(Stan.correct & !Nlp.correct)
x2 <- sum(Nlp.correct & !Stan.correct)

x <- min(x1, x2)
n <- x1 + x2
binom.test(x, n, .5)
