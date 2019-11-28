# demonstration of extracting the introduction paragraph from
# a PDF file

library(pdftools)
library(stringr)
source('config.R')

file.list = file.path(path.RAW,
                      dir(path.RAW, 
                          pattern='.*\\.pdf$', 
                          recursive = FALSE))

r = data.frame()
for(filename in file.list[1:10]) {
  q = pdf_text(filename)
  
  # find individual sentences
  q1 = unlist(strsplit(q,'\n'))
  
  title.firstword = strsplit(filename, '_')[[1]][2]
  
  # find introduction paragraph
  m = grep('introduction',q1,ignore.case = TRUE)
  if(length(m)>0) {
    m = m[1]
    grep(title.firstword,q1,ignore.case = TRUE)[1] -> m1
    title = gsub('\\s\\s+','',q1[m1])
    intro.text = gsub('\\s\\s+','',paste(q1[(m+1):(m+8)],collapse=' '))
    r = rbind(r,
              data.frame(
                title,
                intro = str_replace_all(intro.text, "[[:punct:]]", " ")
              ))
  }
}


