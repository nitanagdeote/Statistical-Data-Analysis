# 3d exponetial function plot
cone <- function(x, y){
  exp(x-y)/(x-y+0.001)
}
x <- y <- seq(-2*pi,2* pi, by=1)
z <- outer(x, y, cone)
persp(x, y, z)
persp(x, y, z,
      main="Perspective Plot of a Cone",
      zlab = "Height",
      theta = 30, phi = 15,
      col = "springgreen", shade = 0.5)
