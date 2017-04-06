#wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz --no-check-certificate
#if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
#
#sudo tar -zxf spark-2.1.0-bin-hadoop2.7.tgz -C /usr/local
scp hadoop@hadoop.buptcloud.info:~/spark.master.tar.gz .
#if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

sudo tar -zxf spark.master.tar.gz -C /usr/local
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

sudo chown -R hadoop /usr/local/spark-2.1.0-bin-hadoop2.7
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

echo 'export JAVA_HOME=/usr/local/jdk1.8.0_121' >> ~/.bashrc
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

echo 'export SPARK_HOME=/usr/local/spark-2.1.0-bin-hadoop2.7' >> ~/.bashrc
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

echo 'export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin' >> ~/.bashrc
if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi

#tar -zcf ~/hadoop.master.tar.gz  /usr/local/spark-2.1.0-bin-hadoop2.7
#if [ "$?" -ne 0 ]; then echo "command failed"; exit 1; fi
