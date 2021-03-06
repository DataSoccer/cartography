% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/legends.R
\name{legendChoro}
\alias{legendChoro}
\title{Legend for Choropleth Maps}
\usage{
legendChoro(pos = "topleft", title.txt = "Title of the legend",
  title.cex = 0.8, values.cex = 0.6, breaks, col, cex = 1,
  values.rnd = 2, nodata = TRUE, nodata.txt = "No data",
  nodata.col = "white", frame = FALSE, symbol = "box")
}
\arguments{
\item{pos}{position of the legend, one of "topleft", "top", 
"topright", "right", "bottomright", "bottom", "bottomleft", "left" or a 
vector of two coordinates in map units (c(x, y)).}

\item{title.txt}{title of the legend.}

\item{title.cex}{size of the legend title.}

\item{values.cex}{size of the values in the legend.}

\item{breaks}{break points in sorted order to indicate the intervals for assigning the colors. 
Note that if there are nlevel colors (classes) there should be (nlevel+1) breakpoints.
It is possible to use a vector of characters.}

\item{col}{a vector of colors.}

\item{cex}{size of the legend. 2 means two times bigger.}

\item{values.rnd}{number of decimal places of the values in 
the legend.}

\item{nodata}{if TRUE a "no data" box or line is plotted.}

\item{nodata.txt}{label for "no data" values.}

\item{nodata.col}{color of "no data" values.}

\item{frame}{whether to add a frame to the legend (TRUE) or 
not (FALSE).}

\item{symbol}{type of symbol in the legend 'line' or 'box'}
}
\description{
Plot legend for choropleth maps.
}
\examples{
library(sp)
data("nuts2006")
plot(nuts0.spdf, col = "grey")
box()
legendChoro(pos = "bottomleft", title.txt = "Title of the legend", title.cex = 0.8,
            values.cex = 0.6, breaks = c(1,2,3,4,10.27,15.2),
            col = carto.pal(pal1 = "orange.pal",n1 = 5), values.rnd =2,
            nodata = TRUE, nodata.txt = "No data available", frame = TRUE, symbol="box")
legendChoro(pos = "bottomright", title.txt = "Title of the legend", title.cex = 0.8,
            values.cex = 0.6, breaks = c(1,2,5,7,10,15.27),
            col = carto.pal(pal1 = "wine.pal",n1 = 5), values.rnd = 0,
            nodata = TRUE, nodata.txt = "NA",nodata.col = "black",
            frame = TRUE, symbol="line")
legendChoro(pos = "topright", title.txt = "Title of the legend", title.cex = 0.8,
            values.cex = 0.6,
            breaks = c(0,"two","100","1 000","10,000", "1 Million"),
            col = carto.pal(pal1 = "orange.pal",n1 = 5), values.rnd =2,
            nodata = TRUE, nodata.txt = "No data available", frame = TRUE,
            symbol="box")
}
