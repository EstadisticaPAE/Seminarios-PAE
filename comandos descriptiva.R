
# **Temas del seminario**
  
# Introducción a la estadística - Caso de estudio: Gran Chaco deforestacion. Instalación y primeros pasos con el entorno de trabajo **R**/RStudio.

# Importación y manejo de datos en **R**, visualizaciones y análisis básicosObtener e interpretar estimadores de los parámetros utilizando funciones específicas sobre las bases de datos.

# Obtener e interpretar gráficos utilizando funciones específicas sobre las bases de datos.

# Caso de estudio ----
# Caso de studio: Gran Chaco deforestacion----

library(gsheet)
chaco<-gsheet2tbl("https://docs.google.com/spreadsheets/d/1dOsyXb1ksBYXPEsbe7OEz9sSht-DrooP3eXILMpPPiM/edit?usp=sharing")

## ¿Qué variables hay en la base de datos y de qué tipo son?----
summary(chaco)
                                          
## ¿Cuáles son las estadísticas descriptivas y como se interpretan?----
                                                                           
library(fBasics)
estadisticas_chaco <- basicStats(chaco[, c(7,9)])         
estadisticas_chaco <-round(estadisticas_chaco, 2)

## ¿Cómo graficar la información?----
### Gráficos de Diagramas de Caja (Box Plot)----
boxplot(chaco$sup_afectada)
boxplot(chaco$cant_focos)
                                                                                                       ### Histogramas----
                                                                       
hist(chaco$sup_afectada)
hist(chaco$cant_focos)
                                                                                                       ### Diagramas de Dispersión----
                                                                           
plot(chaco$año_inicial,chaco$sup_afectada)
plot(chaco$año_inicial,chaco$cant_focos)
                                                                           
## Tabla de frecuencias----
library(agricolae)
                                                                           
### Computar las frecuencias----
h2 <- graph.freq(chaco$sup_afectada,col="bisque",xlab="clases")

### Imprimir la tabla----
print(table.freq(h2))
                                                                          
                                                                           
                                                                     
                                                                             