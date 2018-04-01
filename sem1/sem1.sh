#!/bin/bash
#for sem one
credits=( 4 4 3 3 3 3 1 1 1 );
total=23;
while read -r line
do
for word in $line; do
	if [[ $word == MDL* ]];
	then
	count=0;scg=0;cgp=0;reg=$word
	else
	 grade=$( echo $word | cut -d "(" -f2 | cut -d ")" -f1 )
	 case $grade in
            O)  gp=10  
		#echo $gp
		 			 ;;
            A+) gp=9    
		#echo $gp		
					 ;;
            A)  gp=8.5
		#echo $gp	   	 
					 ;;
            B+) gp=8   
		#echo $gp		 
					 ;;
            B)  gp=7   
		#echo $gp		 
					 ;;
            C)  gp=6   
		#echo $gp		 
					 ;;
            P)  gp=5   
		#echo $gp		 
					 ;;
            F)  gp=0   
		#echo $gp		 
					 ;;
	esac
	cre=${credits[$(( count++ ))]}
	scg=$(bc -l <<< $scg+$gp*$cre )
        cgp=$(bc <<< 'scale=2;'$scg/$total );
fi
done
echo $cgp
done < this.txt
