#!/bin/bash
i=1
while((i))
do
  a=$(ps -aux|tail -n +2|tr -s " "|cut -d " " -f 2,3|sort -k 2|tail -1|cut -d " " -f 2)
  if [[ $a > 1.0 ]]
       then
           b=$(ps -aux|tail -n +2|tr -s " "|cut -d " " -f 2,3|sort -k 2|tail -1|cut -d " " -f 1)
	   kill $b
           echo "process killed is $b"
  else
      echo "process end"
      i=0
  fi

done
