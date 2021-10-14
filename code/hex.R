# packages ----------------------------------------------------------------
library(hexSticker)
library(tidyverse)
library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font_add_google(name = "Share Tech Mono", family = "Share")
## Automatically use showtext to render text for future devices
showtext_auto()

font_add_google(name = "Averia Libre", family = "averia")
## Automatically use showtext to render text for future devices
showtext_auto()


sticker(subplot = "img/goodenuffR-hex.png", package = "goodenuffR",
        p_size = 4.8,
        p_family = "averia",
        p_fontface = "bold",
        p_x = 1,
        p_y = 1.61,
        s_x = 1,
        s_y = 0.91,
        s_width = 0.6,
        s_height = 0.6,
        h_fill = "#32a871",
        h_color = "#fffb03",
        spotlight = TRUE,
        l_x = 0.95,
        l_y = 1,
        filename = "img/goodenuffR.png")
