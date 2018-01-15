#' Download an RDS file from online locations
#'
#' @param name name of a RDS file to download
#' @param url user-specified location of the RDS file to download
#' @param cache if \code{TRUE}, save downloaded file to temporary folder
#' @param ... extra arguments passed to \code{\link{download.file}}
#' @details Datasets currently available by \code{name} are: \describe{
#'   \item{\code{data_corpus_guardian}}{6,000 Guradian newspaper articles in
#'   politics, economy, society and international sections from 2012 to 2016.}
#'   \item{\code{data_corpus_foreignaffairscommittee}}{Transcripts of all the 
#'   speeches at Japan's Committee on Foreign Affairs and Defense of the lower 
#'   house (Shugiin) from 1947 to 2017}.}
#' @return an unserialized R object
#' @export
#' @importFrom utils download.file
#' @examples
#' \dontrun{
#' corp <- download('data_corpus_guardian')
#' corp <- download('data_corpus_foreignaffairscommittee')
#' }
download <- function(name = NULL, url = NULL, cache = TRUE, ...) {
    
    # increment the v parameter in the url to force users to reflesh local cache
    location <- list('data_corpus_foreignaffairscommittee' = 
                         'https://www.dropbox.com/s/e1tb76d57oqc79g/data_corpus_foreignaffairscommittee.rds?dl=1&v=1',
                     'data_corpus_guardian' = 
                         'https://www.dropbox.com/s/7mu92jzodpq11zc/data_corpus_guardian.rds?dl=1&v=1')
    
    if (!is.null(name)) {
        if (name %in% names(location)) {
            url <- location[[name]]
        } else {
            stop(name, "is not available\n")
        }
    }
    if (is.null(url)) {
        stop("name or url needs to be specified\n")
    }
    if (.Platform$OS.type == 'windows') {
        path <- paste(tempdir(), digest::digest(url, 'md5'), sep = '\\')
    } else {
        path <- paste(tempdir(), digest::digest(url, 'md5'), sep = '/')
    }
    if (!file.exists(path) || !cache) {
        download.file(url, destfile = path, mode = 'wb', ...)
    }
    result <- readRDS(path)
    if (!cache) 
        file.remove(path)
    return(result)
}
