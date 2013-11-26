#Removing all objects, start at a tabula rasa

ticks = read.table("nydata.csv", header =T, sep=",")
nrows(ticks)
names(ticks)



mod1 <- glm.nb(tot ~ lastrange, data = ticks)
summary(mod1)


mod1 <- glm.nb(tot ~ 1, data = ticks)
summary(mod1)

attach(ticks)
resp = cbind(Hunner, Hanner, Nymfer, Larver)
detach(ticks)

mod2 <- glm.nb(resp ~ dist, data = ticks)
summary(mod2)

mod3 <- vglm(resp ~ dist, data = ticks, family = negbinomial)
summary(mod3)


