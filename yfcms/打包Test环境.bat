
echo ��ʼ��������Ի���...
call mvn clean

echo ��ʼ���������Ի���....
call mvn -Denv=Test install
call mvn -Denv=Test install

echo ���������Ի�������

cmd