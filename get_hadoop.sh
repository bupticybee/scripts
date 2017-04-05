HADOOP_V=2.7.3
#wget https://mirrors.cnnic.cn/apache/hadoop/common/stable/hadoop-${HADOOP_V}.tar.gz --no-check-certificate
#if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
#sudo tar -zxf hadoop-${HADOOP_V}.tar.gz -C /usr/local
#if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

#cd /usr/local/
#sudo mv ./hadoop-${HADOOP_V}/ ./hadoop
scp hadoop@hadoop.buptcloud.info:~/hadoop.master.tar.gz .
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
sudo tar -zxf hadoop.master.tar.gz -C /usr/local
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
sudo chown -R hadoop /usr/local/hadoop
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

#wget http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz --no-check-certificate
wget http://mirrors.linuxeye.com/jdk/jdk-8u121-linux-x64.tar.gz --no-check-certificate
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
sudo tar -zxf jdk-8u121-linux-x64.tar.gz -C /usr/local
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
