echo "\033[1;31mINSTALANDO DEPENDENCIA\033[1;31m"
echo ""
echo "APERTE (Y) SE FOR NECESSARIO"

sleep 10;
git clone https://github.com/offensive-security/exploitdb.git
pkg install nmap
pkg install gcc
pkg install lua

echo "FINALIZADO"
