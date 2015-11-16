SCRIPTDIR=$(dirname $0)

pip uninstall intelmq
rm -rf /opt/intelmq
python3.4 setup.py install
cp $SCRIPTDIR/intelmq_configs/* /opt/intelmq/etc/

chmod -R 0770 /opt/intelmq
chown -R intelmq.intelmq /opt/intelmq

echo 'export PATH="$PATH:$HOME/bin"' > /opt/intelmq/.profile
echo 'export INTELMQ_PYTHON=/usr/bin/python3.4' >> /opt/intelmq/.profile

