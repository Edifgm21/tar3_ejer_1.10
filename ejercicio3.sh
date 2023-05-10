valor=0
valor1=0
for f in $ls *.txt
	do
	echo "El numero de columna es:"
		parte1=$(head -n 1 $f | awk '{print NF}')
	echo $parte1 
	echo "el numero de filas es:"
		parte2=$(cat $f | wc -l)
	echo $parte2
if ((parte1 > valor1)) 
	then 
columna=$f 
export valor1=$parte1
fi
if ((parte2 > valor))
	then 
fila=$f
export varlor=$parte2
fi
done 

