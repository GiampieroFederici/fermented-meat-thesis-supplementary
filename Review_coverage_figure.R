# Figure prepared from the review matrix metadata; no new statistical analysis.
args <- commandArgs(trailingOnly = TRUE)
stopifnot(length(args) == 2L)
metadata <- read.csv(args[1], stringsAsFactors = FALSE, check.names = FALSE)
stopifnot(nrow(metadata) == 282L, !anyDuplicated(metadata$unit_id),
          !anyNA(metadata[c("continent", "technique")]))
continents <- c("Europe", "Asia", "South America", "Africa", "North America")
techniques <- c("Amplicon", "Isolate", "Shotgun")
stopifnot(all(metadata$continent %in% continents),
          all(metadata$technique %in% techniques))
counts <- list(table(factor(metadata$continent, levels = continents)),
               table(factor(metadata$technique, levels = techniques)))
stopifnot(all(vapply(counts, sum, numeric(1)) == nrow(metadata)))
dir.create(args[2], recursive = TRUE, showWarnings = FALSE)
draw <- function() {
  par(mfrow = c(2, 1), mar = c(3.7, 10.5, 2.5, 1.2),
      mgp = c(2.2, 0.7, 0), las = 1, family = "serif", cex = 1)
  labels <- list(continents, c("Amplicon", "Isolation / fingerprinting", "Shotgun"))
  titles <- c("A  Geographical coverage", "B  Analytical methods")
  for (i in seq_along(counts)) {
    values <- rev(as.numeric(counts[[i]]))
    positions <- barplot(values, horiz = TRUE, names.arg = rev(labels[[i]]),
                         xlim = c(0, 205), col = "#365C78", border = NA,
                         axes = FALSE, xlab = "Analysis units (n)")
    axis(1, at = seq(0, 200, 50), las = 1)
    text(values + 3, positions,
         sprintf("%d (%.1f%%)", values, 100 * values / nrow(metadata)),
         adj = c(0, 0.5), cex = 0.95)
    mtext(titles[i], side = 3, adj = 0, line = 0.8, font = 2)
  }
}
pdf(file.path(args[2], "review_coverage.pdf"), width = 7.2, height = 6.6,
    family = "Times", pointsize = 12, useDingbats = FALSE)
draw()
dev.off()
png(file.path(args[2], "review_coverage.png"), width = 7.2, height = 6.6,
    units = "in", res = 300, pointsize = 12, type = "cairo")
draw()
dev.off()
write.csv(data.frame(group = c(continents, techniques),
                     n = unlist(lapply(counts, as.numeric)),
                     denominator = nrow(metadata)),
          file.path(args[2], "review_coverage_counts.csv"), row.names = FALSE)
cat("Verified metadata:", nrow(metadata), "units; figure exported.\n")
