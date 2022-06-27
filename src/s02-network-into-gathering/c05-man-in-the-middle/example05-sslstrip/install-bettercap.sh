
echo "start installing dependencies"
sudo apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev
echo "done installing dependencies"

echo "start finding login"
cat /usr/local/share/bettercap/caplets/http-ui.cap
echo "done finding login"

echo "start updating"
sudo ./bettercap -eval "caplets.update; ui.update; q"
echo "done updating"

echo "start web ui"
sudo ./bettercap -caplet http-ui

