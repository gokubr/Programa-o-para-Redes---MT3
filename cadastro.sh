#/bin/bash

clear
sleep 1

nome(){ 
	echo  "Digite seu nome: "
	read NAME
DNAME='^[a-zA-Z ]+$'

if [[ $NAME =~ $DNAME ]]; then
	echo "Nome Válido!"
	sleep 2
	nasci
else
	echo "Nome Inválido!"
	sleep 2
	clear
	nome
fi
}

nasci(){
	clear
	echo "Digite a data de seu nascimento: "
	read NAS
DNAS='(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)[0-9]{2}$'

if [[ $NAS =~ $DNAS ]]; then
	echo "Data de nascimento válida!"	
	sleep 2
	mail	
else
	echo "Data de nascimento inválida!"
	sleep 2
	nasc
fi
}


mail(){
	clear
	echo "Digite seu e-mail: "
	read EMAIL
DEMAIL='.+@.+\.(com)+((.br)*)?$'

if [[ $EMAIL =~ $DEMAIL ]]; then
	echo "E-mail Válido!"
	sleep 2
	tele
else
	echo "E-mail Inválido!"
	sleep 2
	mail
fi
}


tele(){
	clear
	echo "Digite seu telefone: "
	read TEL
DTELE='^[0-9]{4}+-[0-9]{4}$'

if [[ $TEL =~ $DTELE ]]; then
 	echo "Telefone Válido!"
	sleep 2
	rg
else
 	echo "Telefone Inválido!"
	sleep 2
	tele
fi
}


rg(){
	clear
	echo "Digite seu RG: "
	read NRG
DRG='^([0-9]{2})\.([0-9]{3})\.([0-9]{3})-([0-9]|[x])$'

if [[ $NRG =~ $DRG ]]; then
	echo "Número de RG Válido!"
	sleep 2
	cpf
else
	echo "Número de RG inválido!"
	sleep 2
	rg
fi
}


cpf(){
	clear
	echo "Digite seu CPF: "
	read NCPF
DCPF='^([0-9]{3})\.([0-9]{3})\.([0-9]{3})-([0-9]{2})$'

if [[ $NCPF =~ $DCPF ]]; then
	echo "Número de CPF Válido!"
	sleep 2
	ip
else
	echo "Número de CPF Inálido!"
	sleep 2
	cpf
fi
}

endip(){
	clear
	echo "Digite um endereço IP: "
	read NIP
DIP='^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[1-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$'

if [[ $NIP =~ $DEIP ]]; then
	echo "Endereço IP Válido!"	
	sleep 2
	mask
else
	echo "Endereço IP Inválido!"	
	sleep 2
	endip
fi
}

masc(){
	clear
	echo "Digite sua netmask. (Formato 255.255.255.255): "
	read MASK
DMASK='^(254|252|248|240|224|192|128)(.0){3}$|^255(.255|.254|.252|.248|.240|.224|.192|.128|.0){3}$'

if [[ $MASK =~ $DMSK ]]; then
	echo "Endereço de Máscara Válida!"	
	sleep 2
else
	echo "Endereço de Máscara Inálida!"	
	sleep 2
	masc
fi
}

nome

clear
