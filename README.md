# Paper-Summarizer
 Summarizes Research Papers Introductions into a Powerpoint slide show. Papers are in a folder, and one powerpoint page is created for each Paper. It does the following steps:

 - finds all PDF files in the selected folder
 - converts PDF to text
 - finds the title of the paper derived from the filename
 - finds the Introduction section and marks the paragraph
 - creates a page in PowerPoint with the title of the paper followed with the introcution paragraph
 - uses the [template.pptx](template.pptx) to generate the PowerPoint.
 - export to PDF (Beamer) and Slidy HTML also possible.

# How to use

You can `knit` the `report.Introductions.Rmd` project with parameters and then enter the path with the research papers. It will then generate a Powerpoint or Slidy HTML presentation.

## Notes

In order to [output custom text in a powerpoint](https://github.com/thomasgredig/example-Powerpoint), the crucial points are to use `paste()` and newlines in the right places, see `report.Introductions.Rmd`.
