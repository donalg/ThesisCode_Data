#!bin/bash 

echo "Opening all *.cpp, *.c, and *.h file types contained within this directory with default applications"

#platform='unknown'
#unamestr=`uname`
#if [["$unamestr" == 'Linux']]; then
#   platform='linux'
#	
#elif [[ "$unamestr" == 'MacOSX' ]]; then
#   platform='MacOSX'
#	# Do nothing:
#fi

#echo $platform 
alias open='xdg-open'
files2open=" "
echo "opening all include files"
for i in $(ls ./includes/); do 
	for j in $(ls ./includes/$i/); do 
		echo "opening: " ./includes/$i/$j
		files2open="$files2open ./includes/$i/$j"

	done
done

echo " "
echo " "
echo " "

echo "opening main function:"
for i in $(ls ./main/); do 
	echo "opening: " ./main/$i
	files2open="$files2open ./main/$i"
	
done
echo $files2open
echo "Completing...."
ls $files2open | xargs -n 1 open "$files2open"
#ls $files2open | while read -r file; do open "$file"; done