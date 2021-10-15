df <- read.csv('data/mtcars.csv')
qsec_scale <- (df$qsec - min(df$qsec)) / (max(df$qsec) - min(df$qsec))
count <- sum(qsec_scale > 0.5)
print(count)