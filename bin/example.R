# ========================================================================== #
# Testing
# ========================================================================== #

rm(list = ls(all = TRUE))

# Load functions:

root <- "C:\\Users\\silva\\Projects\\R_packages\\axelrod_prisionerdilema"
source(file.path(root, "./bin/utilities.R"))
source(file.path(root, "./bin/algos.R"))

# Run a single 10-rounds match between tft and rand:

(ans <- .match(tft, rand, 10))

# Run a single 10-rounds match between tft and tftd:

(ans <- .match(tftd, rand, 100))

# That's a list; if you just want the strategies:

ans$S

# To compute the gains:

colSums(ans$P)

# A small tournament (200-rounds matches):

x <- list(alld = alld, allc = allc, rand = rand, tft = tft, alt = alt,
	grudger = grudger, detect = detect, gtft = gtft, wsls = wsls,
	tf2t = tf2t, tftd = tftd)

(ans <- .tournament(x, 200))

# Updated: Now .tournament returns a matrix:
sort(rowMeans(ans, na.rm = TRUE))
