#!/bin/bash

echo "\033[1;33m ____    ___  ____    _____   ___  __ __ \033[1;33m"
echo "\033[1;33m|    \  /  _]|    \  / ___/  /  _]|  T  T\033[1;33m"
echo "\033[1;33m|  o  )/  [_ |  D  )(   \_  /  [_ |  |  |\033[1;33m"
echo "\033[1;33m|   _/Y    _]|    /  \__  TY    _]|  |  |\033[1;33m"
echo "\033[1;33m|  |  |   [_ |    \  /  \ ||   [_ |  :  |\033[1;33m"
echo "\033[1;33m|  |  |     T|  .  Y \    ||     Tl     |\033[1;33m"
echo "\033[1;33ml__j  l_____jl__j\_j  \___jl_____j \__,_j\033[1;33m"
echo  "\033[1;33m                                        \033[1;33m"
echo  " Tenebris hacking"
echo  " by:L3f7Sh"
echo  "  "

# route para você conferir seu ip interno
echo "\033[1;36m------------------------------------------\033[1;36m"
route -n
echo "------------------------------------------"

echo ""
echo "\033[0;34m \033[0;34m"
echo "Informe seu ip interno:  "; read ip
#Nmap vai ver os IP's online
echo ""
echo "NMAP SCAN"
nmap -sP $ip/24
nmap -sV --top-ports 10 $ip/24
echo  " \033[01;32mNMAP FINALIZADO\033[01;37m"
echo ""

#ARP VAI MOSTRAR OS IP'S ON/OFF
echo "ARP SCAN"
arp
sleep 10;
arp -a
echo ""
echo  " \033[01;32mARP FINALIZADO\033[01;37m"
echo " "


echo "AGORA IREMOS PROCURAR FALHAS"

echo "\033[1;31mDIGITE O IP DO ALVO:\033[1;31m"; read p
echo " PROCURANDO VULL..."
nmap -Pn --script vuln $P
echo "PESQUISA FINALIZADA"
echo ""


#AGORA VAMOS PROCURAR EXPLOIT COM SEARCH EXPLOIT
echo "DIGITA A VERSÃO DO SOFTWARE ENCONTRADA PELO NMAP: "; read v
cd exploitdb
./searchsploit $v -w

echo ""

echo "_____ ___ __  __  "
echo "|  ___|_ _|  \/  |"
echo "| |_   | || |\/| |"
echo "|  _|  | || |  | |"
echo "|_|   |___|_|  |_|"
