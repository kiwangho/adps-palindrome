cd $(dirname $0)
cd ../complete
mvn clean package

rm -rf target

./gradlew build
ret=$?
if [ $ret -ne 0 ]; then
exit $ret
fi

rm -rf build
exit
