#/bin/sh
./build.sh
cd ..
git clone https://github.com/signalapp/Signal-TLS-Proxy.git
cd Signal-TLS-Proxy
./init-certificate.sh
