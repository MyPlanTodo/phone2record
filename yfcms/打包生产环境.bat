
echo ��ʼ������Product����...
call mvn clean

echo ��ʼ������Dev����....
call mvn -Denv=Product install
call mvn -Denv=Product install

echo ������Product��������

cmd