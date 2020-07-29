# Creem una funció per llegir un valor escrit
llegirNumero <- function(){
  cat ("Escriu el número que creus que és i després prèm [enter]. (Escriu 0 per abandonar)")
  num = readline()
  num = as.numeric(num)
  if(!is.na(num) & 0 <= num & num <= 100){
    return(num)
  }else{
    cat("Aquest no està entre 1 i 100 o això no és un número...\n")
    return(llegirNumero())
  }
}

# Inicialitzem el joc
numero_aleatori = sample(1:100)
intents = 0
num = 0

# Comença el joc!
cat("M'he pensat un número de l'1 al 100. Quants intents necessitaràs per endevinar-lo?\n")
while (num != numero_aleatori[100]) {
  intents = intents + 1
  num = llegirNumero()
  if(num == 0){
    break
  }
  if(num < numero_aleatori[100]){
    cat("El número que tinc pensat és més gran!\n")
  }
  if(numero_aleatori[100] < num){
    cat("El número que tinc pensat és més petit!\n")
  }
  
}
if(num != 0){
  cat(sprintf("Perfecte!!! El número que tenia pensat era el %d, l'has acertat amb %d intents.", numero_aleatori[100], intents))
}else{
  cat(sprintf("El número que tenia pensat era el %d. Fins un altre.", numero_aleatori[100]))
}

