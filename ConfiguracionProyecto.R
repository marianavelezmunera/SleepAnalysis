# Configuración del proyecto

# Paquetes

library(tidyverse)
library(patchwork)
library(showtext)
library(correlation)
library(ggpubr)
library(ggtext)
library(gt)
library(gtable)
library(gtExtras)
library(MetBrewer)
library(reshape)
library(readxl)

#Datos

DB <- read_excel("DB.xls", col_types = c("text","numeric", "text", "text", "text", "text","text", "numeric", "text", "numeric","numeric", "text", "numeric", "text","text", "text", "numeric", "text", "numeric","numeric", "numeric", "numeric", "numeric","numeric", "numeric", "numeric", "date"))

DB_age<-round(DB$age)
DB_age
DB$age<-DB_age
attach(DB)

MCTQ <- read_excel("MCTQ.xlsx")
View(MCTQ)
attach(MCTQ)

#Corroborar las categóricas

unique(DB$sex)
unique(DB$homewith)
unique(DB$kids_age_menor10)
unique(DB$job)
unique(DB$modalidad)
unique(DB$shift)
unique(DB$nights_or_shifts)
unique(DB$sleeping_quality)
unique(DB$MSFSC)

# Letra

font_add_google("Open Sans","Open Sans") #Font
font.families()
showtext_auto()
