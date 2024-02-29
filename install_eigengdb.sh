cd /tmp
git clone https://github.com/dmillard/eigengdb
cd eigengdb
python3 ./setup.py install
sudo apt install python3-pip
python3 ./setup.py install
sudo python3 ./setup.py install
python3 ./bin/eigengdb_register_printers

