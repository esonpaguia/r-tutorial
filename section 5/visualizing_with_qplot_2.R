# Run merging_data_frames.R first
source("merging_data_frames.R")

qplot(data = merged, x=Internet.users, y=Birth.rate, 
      size=I(4),
      color=Region)

# Shapes
qplot(data = merged, x=Internet.users, y=Birth.rate, 
      size=I(4),
      color=Region,
      shape=I(23))

# Transparency
qplot(data = merged, x=Internet.users, y=Birth.rate, 
      size=I(4),
      color=Region,
      shape=I(19),
      alpha=I(0.6))

# Title
myplot <- qplot(data = merged, x=Internet.users, y=Birth.rate, 
                size=I(4),
                color=Region,
                shape=I(19),
                alpha=I(0.6),
                main = "Birth rate vs Internet Users")

# Remove background
myplot + theme_bw()

# Remove grid 
myplot + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

# Remove border
myplot + theme(panel.border = element_blank())

# Remove background, grid, border
myplot + theme(panel.background = element_blank())

# Add axis line
myplot + theme(axis.line = element_line(colour = "black"))

# Putting all togeter 1
myplot + theme(panel.grid.major = element_blank(), 
               panel.grid.minor = element_blank(),
               panel.background = element_blank(), 
               axis.line = element_line(colour = "black"))

# Putting all togeter 2
myplot + theme_bw() + theme(panel.border = element_blank(), 
                            panel.grid.major = element_blank(),
                            panel.grid.minor = element_blank(), 
                            axis.line = element_line(colour = "black"))
