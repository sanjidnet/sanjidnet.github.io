ds_use_cases <- data.table(readLines("C:/Users/sanjidr/projects/sanjid25.github.io/assets/data/UseCases.md"))
#ds_use_cases[, LINE := seq_len(dim(ds_use_cases)[1])]
ds_use_cases[grep("#", V1), FILE := V1]
ds_use_cases[, FILE := gsub("#", "", FILE)]
ds_use_cases[, FILE := trimws(FILE)]
ds_use_cases[!is.na(FILE), FILE := make.unique(FILE)]

iterator <- grep("#", ds_use_cases$V1)
for (i in 1:length(iterator)) {
  dta <- ds_use_cases[( iterator[i] + 1 ) : ( iterator[i+1] - 1 )]$V1
  #message(ds_use_cases[i]$FILE)
  filename <- ds_use_cases[iterator[i]]$FILE
  frontmatter <- sprintf("---\ntitle: %s\ndate: %s +1200\ntags: [datascience, knowledge]\n---\n", filename, (Sys.time() - 60 * 60 * 12) - (20 * i))
  write(frontmatter, paste0("C:/Users/sanjidr/projects/sanjid25.github.io/Data Science/Use Cases/_posts/", Sys.Date() - 1, "-", filename, ".md"))
  write(dta, paste0("C:/Users/sanjidr/projects/sanjid25.github.io/Data Science/Use Cases/_posts/", Sys.Date() - 1, "-", filename, ".md"), append = TRUE)
}