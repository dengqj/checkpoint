#' Install packages from snapshots on the checkpoint server for reproducibility
#'
#' The goal of checkpoint is to solve the problem of package reproducibility in R. Specifically, checkpoint allows you to install packages as they existed on CRAN on a specific snapshot date as if you had a CRAN time machine.
#'
#' To achieve reproducibility, the checkpoint() function installs the packages required or called by your project and scripts to a local library exactly as they existed at the specified point in time. Only those packages are available to your project, thereby avoiding any package updates that came later and may have altered your results. In this way, anyone using the checkpoint checkpoint() function can ensure the reproducibility of your scripts or projects at any time.
#'
#' To create the snapshot archives, once a day (at midnight UTC) we refresh the Austria CRAN mirror, on the checkpoint server (http://mran.revolutionanalytics.com/).  Immediately after completion of the rsync mirror process, we take a snapshot, thus creating the archive.  Snapshot archives exist starting from 2014-09-17.
#'
#' checkpoint exposes only a single function:
#'
#' \describe{
#' \item{\code{\link{checkpoint}}}{Configures R session to use packages as they existed on CRAN at time of snapshot.}
#' }
#'
#' @name checkpoint-package
#' @docType package
#' @keywords package
NULL
