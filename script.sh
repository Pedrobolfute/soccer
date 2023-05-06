## Atualizando sistema

echo -e "\n##Atualizando o sistema##\n"

sudo apt update

echo -e "\n##Baixando e instalando dependencias##\n"

sudo apt install make cmake wget curl -y

sudo apt install build-essential automake autoconf libtool flex bison libboost-all-dev -y

sudo apt install build-essential qt5-default libfontconfig1-dev libaudio-dev libxt-dev libglib2.0-dev libxi-dev libxrender-dev -y

echo -e "\n##Baixando rcssserver##\n"

cd $USER

wget -O - https://github.com/rcsoccersim/rcssserver/releases/download/rcssserver-18.1.3/rcssserver-18.1.3.tar.gz > server.tar.gz

echo -e "\n##Baixando rcssmonitor##\n"

wget -O - https://github.com//rcsoccersim/rcssmonitor/releases/download/rcssmonitor-18.0.0/rcssmonitor-18.0.0.tar.gz > monitor.tar.gz

echo -e "\n##Extraindo##\n"

mvServer=$(tar -xf server.tar.gz -v | head -n 1)

tar -xf server.tar.gz

mv $mvServer server

mvMonitor=$(tar -xf monitor.tar.gz -v | head -n 1)

tar -xf monitor.tar.gz

mv $mvMonitor monitor

mkdir soccerSim
mkdir soccerSim/keep

mv server soccerSim

mv monitor soccerSim

mv server.tar.gz soccerSim/keep
mv monitor.tar.gz soccerSim/keep