#' Compute Photovoltaic System Energy 
#'
#' Calculates the energy produced from a photovoltaic system if you know the average annual solar radiation. 
#'
#' @param A The solar panel area (m$^2$),
#' @param r The panel yield (dimensionless, 0–1), representing manufacturer efficiency (typically $\sim 0.2$),
#' @param PR The performance ratio (dimensionless, 0–1), accounting for site-specific losses (typically $\sim 0.75$)
#' @param H The annual average solar radiation (kWh m$^{-2}$).
#'
#' @returns The energy produced (kWh)
#' @export
#'
#' @examples
#' Calculate energy for a 20 (m$^2$) panel with an annual average solar radiation of 10 (kWh m$^{-2}$) and default values for panel yield (r) and performance ration (PR).
#' pv_energy(A = 20, H = 10)
pv_energy <- function(A, r = 0.2, PR = 0.75, H){
  energy <- A*r*H*PR
  return(energy)
}