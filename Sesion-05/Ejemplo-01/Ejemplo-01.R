# Declaramos una funci�n

saludo <- function(nombre){
  mensaje <- paste('Hola', nombre)
  return(mensaje)
  }

# Llamada a la funci�n
saludo('Ana')

saludo('Pablo')  

# Declaramos una funci�n
operacion.personalizada <- function(a,b,c){
  paso.1 <- (a+b)*4 + 2*a
  paso.2 <- paso.1**2 + c/2
  paso.3 <- paso.2**3
  return(paso.3)
  }

# Llamada a la funci�n
operacion.personalizada(1,2,3)
operacion.personalizada(7,8,9)