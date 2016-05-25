library("devtools")

res <- revdep_check()
revdep_check_save_summary()
revdep_email(date = "June 8", only_problems = TRUE)
