export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/
export PATH=$PATH
LIB=/Users/ramistefanidis/IdeaProjects/RestFixture/scratch/target/dependencies
for i in $LIB/*.jar; do
    CLASSPATH=$CLASSPATH:$i
done
export CLASSPATH=`echo $CLASSPATH | cut -c2-`
echo $CLASSPATH
java -cp $CLASSPATH fitnesseMain.FitNesseMain -p 9090 -d src\main\resources -e 0 

