FILEPATH=$PWD
LIB=$FILEPATH/target/dependencies
for i in $LIB/*.jar; do
    CLASSPATH=$CLASSPATH:$i
done
export CLASSPATH=`echo $CLASSPATH | cut -c2-`
echo $CLASSPATH
java -cp $CLASSPATH fitnesseMain.FitNesseMain -p 9090 -d src\main\resources -e 0 

