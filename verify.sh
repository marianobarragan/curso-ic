echo "// *** Starts verify.sh. *** //"
export PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home/bin/:$PATH
./gradlew clean verify
echo "// *** Ends verify.sh. *** //"