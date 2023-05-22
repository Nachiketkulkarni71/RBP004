for files in *.*
do
	folderName=`echo $files | awk -F. '{print$1}';`
	fileName=`echo $files | awk -F. '{print$2}';`
	echo $files;
	echo $folderName;
	echo $filename;
	printf "\n";
	if [ -d $folderName ]
	then
		rm -r $folderName;
	fi
	if [ -d $fileName ]
	then
		rm -r $fileName;
	fi
	#mkdir $folderName
	mkdir -p $folderName/$fileName;
	#mkdir $fileName;
	cp $files $folderName/$fileName;
	#mv $fileName $folderName;
done
