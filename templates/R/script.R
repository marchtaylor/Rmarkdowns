
# 0. required packages -------------------------------------------------------
library(MASS)


# 1. plots -------------------------------------------------------------------

png("templates/output/volcano.png", width = 5, height = 5, units = "in", res = 400)
  image(volcano)
dev.off()

dat <- MASS::mvrnorm(n = 1000, mu = c(0,0), Sigma = array(c(1,0.7,1,0.7), dim = c(2,2)))
tiff("templates/output/mvrnorm.tiff", width = 5, height = 5, units = "in", res = 400, compression = "lzw")
  plot(dat)
dev.off()

png("templates/output/mvrnorm.png", width = 5, height = 5, units = "in", res = 400)
  plot(dat)
dev.off()


# 2. tables ---------------------------------------------------------------
iris2 <- read.csv(file = "templates/data/iris.csv", row.names = 1)
P <- prcomp(as.matrix(iris[,1:4]))
iris3 <- cbind(iris2, P$x[,1:2])

save(iris3, file = "templates/output/iris3.Rdata")


