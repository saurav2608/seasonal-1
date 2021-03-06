#' Defunct Functions
#' 
#' The \code{arimamodel} functions is defunct now. Use 
#' the more univeral \code{\link{udg}} function.
#' @rdname seasonal-defunct
#' @seealso \code{\link{udg}}, for universal access to X-13 statistics
#' @examples
#' \dontrun{
#' m <- seas(AirPassengers)
#' udg(x, "x13mdl")
#' }
#' @export
arimamodel <- function(x){
  stopifnot(inherits(x, "seas"))

  msg <- 'udg(x, "x13mdl")'
  .Defunct(msg)

}


#' Defunct Functions
#' 
#' The \code{inspect} functions is defunct now. Use 
#' the extended \code{\link{view}} function instead.
#' @param x an object of class \code{"seas"}. 
#' @param fun a function or a list of functions (see details)
#' @param check.version logical, should the version of shiny be checked
#' @param quiet logical, if \code{TRUE} (default), error messages from calls in 
#'   inspect are not shown in the console
#' @param ... further arguments, passed on to 
#'   \code{\link[shiny]{runApp}}. (The \code{launch.browser} argument of 
#'   version 0.8 can be still used that way)
#' @rdname seasonal-defunct
#' @seealso \code{\link{view}}, for an extended graphical user interface.
#' @examples
#' \dontrun{
#' m <- seas(AirPassengers)
#' view(m)
#' }
#' @export
inspect <- function(x, fun = NULL, check.version = TRUE, quiet = TRUE, ...){ 

  # print(deparse(substitute(x)))
  msg <- 
paste0("This function is defunct. 'seasonal' now uses the 
graphical user interface from the 'seasonalview' package. \n
Please use instead: \n\n    view(", deparse(substitute(x)), ")")
  .Defunct(new = "", msg = msg)

}
