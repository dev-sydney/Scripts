#1/bin/bash

var1="aa"

change_variables(){

	local scoped="BB"
	echo "$var1"
}
echo "The scoped variable: $scoped"
change_variables
