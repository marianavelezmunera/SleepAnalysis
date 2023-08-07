# ANOVAS

# Satisfaccion vs calidad de sueño

kruskal.test(job_satisfaction~sleeping_quality,data = DB)
oneway.test(job_satisfaction~sleeping_quality,data = DB,var.equal = FALSE)


# Satisfaccion vs shift

kruskal.test(job_satisfaction~shift,data = DB)
oneway.test(job_satisfaction~shift,data = DB,var.equal = FALSE)

# Satisfaccion vs job

kruskal.test(job_satisfaction~job,data = DB)
oneway.test(job_satisfaction~job,data = DB,var.equal = FALSE)

# Productividad vs job

kruskal.test(self_productivity~job,data = DB)
oneway.test(self_productivity~job,data = DB,var.equal = FALSE)

# Productividad vs shift

kruskal.test(self_productivity~shift,data = DB)
oneway.test(self_productivity~shift,data = DB,var.equal = FALSE)

# Productividad vs calidad del sueño

kruskal.test(self_productivity~sleeping_quality,data = DB)
oneway.test(self_productivity~sleeping_quality,data = DB,var.equal = FALSE)

# Productividad vs jobdays

kruskal.test(self_productivity~jobdays_perweek,data = DB)
oneway.test(self_productivity~jobdays_perweek,data = DB,var.equal = FALSE)

# Satisfaccion vs jobdays

kruskal.test(job_satisfaction~jobdays_perweek,data = DB)
oneway.test(job_satisfaction~jobdays_perweek,data = DB,var.equal = FALSE)

