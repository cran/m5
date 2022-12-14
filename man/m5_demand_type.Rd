% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/demand-type.R
\name{m5_demand_type}
\alias{m5_demand_type}
\title{Classify time series of the particular items}
\usage{
m5_demand_type(data)
}
\arguments{
\item{data}{The result of the \code{m5_prepare} function; \code{tiny_m5} can be passed as well.}
}
\value{
A \code{data.table} containing item ids (\code{item_id} and \code{store_id}),
ADI and CV2 scores (\code{adi} and \code{cv2} respectively) as well as the final
class chosen based on the aforementioned scores (\code{demand_type}).
}
\description{
Each time series in the dataset can be assigned one of the following classes:
}
\details{
\itemize{
\item Smooth (ADI < 1.32 and CV² < 0.49).
\item Intermittent  (ADI >= 1.32 and CV² < 0.49)
\item Erratic (ADI < 1.32 and CV² >= 0.49)
\item Lumpy (ADI >= 1.32 and CV² >= 0.49)
}
}
\examples{
head(m5_demand_type(tiny_m5))

}
\references{
\href{https://www.sciencedirect.com/science/article/abs/pii/S0169207004000792?via\%3Dihub}{Syntetos A. A. and Boylan J. E., 2005, The accuracy of intermittent demand estimates. International Journal of Forecasting 21: 303–314}
\href{https://deep-and-shallow.com/2020/10/07/forecast-error-measures-intermittent-demand/}{Forecast Error Measures: Intermittent Demand}
}
