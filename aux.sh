CONTADOR=1
while [  $CONTADOR -lt 12 ]; do
      touch "desafio$CONTADOR.sql";
      let CONTADOR=CONTADOR+1; 
done
