#' function to pass R objects to compiled C code loaded into R
#' @param fromDate starting date
#' @param offset function
#' @param holidays holidays is an input for holiday files to adjust to in day
#' counting. Default is 'None'.
#' 

busDaysOffset <- function(fromDate, offset, holidays = NULL){
    fromDate <- .separateYMD(fromDate)
    
    .Call('busDaysOffset',
          fromDate,
          offset,
          holidays,
          PACKAGE = 'CDS')
}
