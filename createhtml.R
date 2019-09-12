setwd('D:/Users/xiergo/Documents/GitHub/xiergo.github.io')
dirf=read.delim('directory.txt',quote = '\"')
head(dirf)
html.start=c('<!DOCTYPE html>',
       '<html lang="en">',
       '<head>',
       '	<meta charset ="UTF-8">',
       '	<title>Xiergo\' Page</title>',
       '</head>',
       '<body>',
       '	<h1>Hello World</h1>',
       '	<p>This is Xiergo\'s file system.</p>')
link=paste0('\t<a href="localexplorer:',dirf$path,
            '">',dirf$file,'</a><br>')

html.end=c('</body>','</html>')
html=c(html.start,link,html.end)
write.table(html,'index.html',quote = F,row.names = F,col.names = F)