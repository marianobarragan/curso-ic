#/bin/hash
echo "// *** Starts build.sh. *** //"
export PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home/bin/:$PATH

./gradlew -DapiName=curso-ic buildImage
echo "// *** Ends build.sh. *** //"