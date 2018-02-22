cp GENERIC-IWM /usr/src/sys/amd64/conf/GENERIC-IWM
echo 'KERNCONF=GENERIC-IWM' >>/etc/make.conf
cd /usr/src
make -j4 buildworld buildkernel
make installkernel installworld
mergemaster -iF
