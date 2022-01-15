image2pptx <- function(image, title)
{

    library(rvg)
    library(ggplot2)
    library(officer)

    file_name = paste(title, ".pptx", sep = "")

 doc <- read_pptx()
 doc <- add_slide(doc, layout = "Title and Content", master = "Office Theme")
 doc <- ph_with_vg(doc, code = print(image), type = "body")
 print(doc, target = file_name)
}