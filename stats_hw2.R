# R commands go here

# Part 1
x <- 501
n <- 501 + 1859

binom.test(x, n, .5)

# Part 2
df <- read.table("PTB.tsv", sep="\t", header=TRUE)

df_stan <- df[df$Stanford.tag==df$gold.tag, ]
df_nlp <- df[df$NLP4J.tag==df$gold.tag, ]

x1 <- nrow(df_stan[df_stan$gold.tag!=df_stan$NLP4J.tag, ])
x2 <- nrow(df_nlp[df_nlp$gold.tag!=df_nlp$Stanford.tag, ])
x <- min(x1, x2)
n <- x1 + x2
binom.test(x, n, .5)
