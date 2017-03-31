HADOOP_V=2.7.3
wget https://mirrors.cnnic.cn/apache/hadoop/common/stable/hadoop-${HADOOP_V}.tar.gz --no-check-certificate
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
sudo tar -zxf hadoop-${HADOOP_V}.tar.gz -C /usr/local
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
cd /usr/local/
sudo mv ./hadoop-${HADOOP_V}/ ./hadoop
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
sudo chown -R hadoop ./hadoop
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
