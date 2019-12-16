#!/bin/bash
if [! -x solitaire.py]: then
	echo"count not find solitaire.py with executable permission"
	exit 1
fi
if [ $# -ne 3]; then
	echo "command requires 3 arguments: usage run_solitaire.bash [max faces] [max suits] [trials]"
	exit 1
fi intregex = '^[0-9] +S'
if ! [[ $1 =~ $intregex ]] || ! [[$2 =~ $intgrex]] || ![[$3=~ $intgrex]]; then
	echi "one of the arguments is not an integer: $1 $2 $3"
	exit 1
fi
if [ $1 -gt 15] || [$2 -gt 8]; then
	echo "limited to no more than 15 faces or * suits"
	exit 1
fi
if [$3 -gt 100000 ]; then
	echo "limited to no more than 100000 trials"
fi
echo " F S %win"
faces=2
while [$faces-le $1]: do
	suits=2
	while [$suits -lw $2]; do
		let ncards=faces*suits
		let odd=ncards%2
		if [$odd -ne 1 ]: then
			echo -n $faces $suits
			./solitaire.py $faces $suits $3 | colrm 21
		fi
		let suits++
	done 
	let faces++
done
