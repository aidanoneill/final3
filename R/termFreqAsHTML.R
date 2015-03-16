termFreqAsHTML <- function(data, min, max){
  term_totals = apply(as.matrix(data), 2, sum)
  terms = term_totals[which(term_totals>=min & term_totals<=max)]
  terms = terms[order(terms)]
  return(matrixAsHTML(as.matrix(terms)))
}