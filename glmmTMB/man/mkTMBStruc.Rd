% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glmmTMB.R
\name{mkTMBStruc}
\alias{mkTMBStruc}
\title{Extract info from formulas, reTrms, etc., format for TMB}
\usage{
mkTMBStruc(formula, ziformula, dispformula, combForm, mf, fr, yobs,
  respCol, weights, contrasts, size = NULL, family, se = NULL,
  call = NULL, verbose = NULL, ziPredictCode = "corrected",
  doPredict = 0, whichPredict = integer(0), REML = FALSE,
  start = NULL)
}
\arguments{
\item{formula}{combined fixed and random effects formula, following lme4
syntax}

\item{ziformula}{a \emph{one-sided} (i.e., no response variable) formula for
    zero-inflation combining fixed and random effects:
the default \code{~0} specifies no zero-inflation.
Specifying \code{~.} sets the zero-inflation
formula identical to the right-hand side of \code{formula} (i.e., the conditional effects formula); terms can also be added or subtracted. \strong{When using \code{~.} as the zero-inflation formula in models where the conditional effects formula contains an offset term, the offset term will automatically be dropped}.
The zero-inflation model uses a logit link.}

\item{dispformula}{a \emph{one-sided} formula for dispersion containing only fixed effects: the
default \code{~1} specifies the standard dispersion given any family.
The argument is ignored for families that do not have a dispersion parameter.
For an explanation of the dispersion parameter for each family, see (\code{\link{sigma}}).
The dispersion model uses a log link. 
In Gaussian mixed models, \code{dispformula=~0} fixes the parameter to be 0, forcing variance into the random effects.}

\item{combForm}{combined formula}

\item{mf}{call to model frame}

\item{fr}{model frame}

\item{yobs}{observed y}

\item{respCol}{response column}

\item{weights}{weights, as in \code{glm}. Not automatically scaled to have sum 1.}

\item{contrasts}{an optional list, e.g. \code{list(fac1="contr.sum")}. See the \code{contrasts.arg} of \code{\link{model.matrix.default}}.}

\item{size}{number of trials in binomial and betabinomial families}

\item{family}{family object}

\item{se}{(logical) compute standard error?}

\item{call}{original \code{glmmTMB} call}

\item{verbose}{verbosity setting from original \code{glmmTMB} call}

\item{ziPredictCode}{zero-inflation code}

\item{doPredict}{flag to enable sds of predictions}

\item{whichPredict}{which observations in model frame represent predictions}

\item{REML}{Logical; Use REML estimation rather than maximum likelihood.}

\item{start}{starting values, expressed as a list with possible components
\code{beta}, \code{betazi}, \code{betad} (fixed-effect parameters for
conditional, zero-inflation, dispersion models); \code{b}, \code{bzi}
(conditional modes for conditional and zero-inflation models);
\code{theta}, \code{thetazi} (random-effect parameters, on the
standard deviation/Cholesky scale, for conditional and z-i models);
\code{thetaf} (extra family parameters, e.g. shape for Tweedie models)}

\item{zioffset}{offset for zero-inflated model}

\item{doffset}{offset for dispersion model}
}
\description{
Extract info from formulas, reTrms, etc., format for TMB
}
\keyword{internal}
