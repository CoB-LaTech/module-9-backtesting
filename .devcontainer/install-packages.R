# Install all packages needed across CoB-LaTech finance modules
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/latest"))

pkgs <- c(
  # Core — used in every module
  "tidyverse",
  "tidyquant",
  # Module 3 — Technical analysis
  "plotly",
  "TTR",
  # Module 4 — Portfolio optimization
  "scales",
  # Module 5 — Financial tables
  "gt",
  "gtExtras",
  # Module 6 — Time series forecasting
  "tidymodels",
  "modeltime",
  "timetk",
  "gtrendsR",
  # Module 7 — Tidy models / model studio
  "modelStudio",
  "DALEX",
  # Module 8 & 9 — Risk, VaR, backtesting
  "PerformanceAnalytics",
  # Module 10 — Shiny capstone
  "shiny",
  "shinyWidgets"
)

installed <- rownames(installed.packages())
to_install <- pkgs[!pkgs %in% installed]

if (length(to_install) > 0) {
  message("Installing: ", paste(to_install, collapse = ", "))
  install.packages(to_install, dependencies = TRUE)
} else {
  message("All packages already installed.")
}

message("Package setup complete.")
