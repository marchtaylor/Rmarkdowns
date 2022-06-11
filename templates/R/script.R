
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

save(iris, file = "templates/output/iris.Rdata")
write.csv(iris, file = "templates/output/iris.csv")

