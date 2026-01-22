#' Model to determing projected almond yield based on climate parameters
#'
#' @param tmin_feb Vector of minimum temperatures in February per year.
#' @param precip_jan Vector of total precipitation in January per year.
#'
#' @returns
#' @export
#'
#' @examples almond_yield(5.6, 10)

almond_yield <- function(tmin_feb, precip_jan) {
  yield = -0.015*tmin_feb - 0.0046 * (tmin_feb)^2 - 0.07 * precip_jan + 0.0043 * (precip_jan)^2 + 0.28
  
  return(yield)
}