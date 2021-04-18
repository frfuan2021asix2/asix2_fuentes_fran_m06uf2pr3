#bin/bash
echo -n "Ingresa la ruta  : "
read ruta
echo $ruta
echo -n "Ingresa el nombre del archivo  : "
read archivo

if [[ -e /home/FitxConfBackup ]]
then
	echo -n ""
	echo -n  "El directorio /home/FitxConfBackup ya existe"
	echo -n ""
else
	mkdir /home/FitxConfBackup
fi

if [[ -e /home/FitxConfBackup/$archivo ]]
then
	echo -n ""
	rm /home/FitxConfBackup/$archivo
	touch /home/FitxConfBackup/$archivo
	echo -n ""
	echo -n  "Se ha sobreescrivido $archivo"
	echo -n ""
else
	echo -n ""
	touch /home/FitxConfBackup/$arxiu
	echo -n  " Se ha creado correctamente $archivo"
	echo -n  ""

fi

