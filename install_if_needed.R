#' A wrapper for install.
#'
#' This function allows you to install packages.
#' @keywords install
#' @export
#' @examples
#' install_if_needed("dplyr")
#'
install_if_needed <- function(pkgs, lib=NULL, repos=getOption("repos"),
contriburl=contrib.url(repos, type), method, available=NULL, destdir=NULL,
dependencies=NA, type=getOption("pkgType"), configure.args=getOption("configure.args"),
configure.vars=getOption("configure.vars"), clean=FALSE, Ncpus=getOption("Ncpus", 1L),
verbose = getOption("verbose"), libs_only=FALSE, INSTALL_opts, quiet=FALSE,
keep_outputs=FALSE,
check_version=TRUE,
...)
{
    installed <- installed.packages()
    installed <- data.frame(Package=installed[, "Package"], Version=installed[, "Version"], stringsAsFactors=FALSE)

    avail <- available.packages()
    avail <- data.frame(Package=avail[, "Package"], Version=avail[, "Version"], stringsAsFactors=FALSE)

    for (pkg in pkgs)
    {
        if (any(installed$Package == pkg))
        {
            if (check_version)
            {
                installed.version <- installed[which(installed$Package == pkg), 2]
                avail.version <- avail[which(avail$Package == pkg), 2]

                if (installed.version != avail.version)
                    should.install <- TRUE
                else
                    should.install <- FALSE
            }
        }
        else
            should.install <- TRUE

        if (should.install)
        {
            install.packages(pkgs=pkg, lib=lib, repos=repos, contriburl=contriburl, method=method,
                             available=available, destdir=destdir, dependencies=dependencies, type=type,
                             configure.args=configure.args, configure.vars=configure.vars, clean=clean,
                             Ncpus=Ncpus, verbose=verbose, libs_only=libs_only, INSTALL_opts=INSTALL_opts,
                             quiet=quiet, keep_outputs=keep_outputs, ...)
        }
        else
            warning(paste("Skipping", pkg))
    }

    invisible()
}
