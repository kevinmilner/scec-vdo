if [[ $# -ne 1 ]];then
	echo "only for internal use"
	exit 2
fi

CLASSPATH=`find lib/ -maxdepth 1 -mindepth 1 -name '*.jar' | fgrep -v vtk.jar | tr '\n' ':'`
CLASSPATH="classes:$1:$CLASSPATH"

echo "CLASSPATH: $CLASSPATH"

java -splash:resources/SCECVDOlogo.png -Xms2G -Xmx20G -cp $CLASSPATH org.scec.vtk.main.MainGUI
