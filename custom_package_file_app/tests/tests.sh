#!/bin/sh
# Testing for the Custom Package File Application
# Created by: Louis Marchand
# Date: December 13, 2013


test_iter () {
	nb_file=$(( $RANDOM % 10 ))
	param=""
	for count in `seq 1 $nb_file`; do
		RANDOM=$(od -An -N2 -i /dev/random)
		dd if=/dev/urandom of=file_$count.src bs=1K count=$(( ($RANDOM % 10000) + 1 ))
		param="$param file_$count.src"
	done
	../EIFGENs/custom_package_file/W_code/custom_package_file create result.cpf $param 2>> ../tests.log
	../EIFGENs/custom_package_file/W_code/custom_package_file extract result.cpf 2>> ../tests.log
	for count in `seq 1 $nb_file`; do
		diff file_$count.src File$count >> ../tests.log
		if [ $? -ne 0 ]; then
			echo "Test Failed: the files file_$count.src and File$count are differents."
			echo "Test Failed: the files file_$count.src and File$count are differents." >> ../tests.log
		fi
	done
}

error_case () {
	
	echo "custom_package_file"
	echo "custom_package_file" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file 2> tests.log
	if [ $? -eq 0 ]; then
		echo "Test Failed: Using the program without arguments don't return error code."
		echo "Test Failed: Using the program without arguments don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error.">> tests.log
		rm -f File1
	fi

	echo "custom_package_file create"
	echo "custom_package_file create" >> tests.log	
	EIFGENs/custom_package_file/W_code/custom_package_file create 2> tests.log
	if [ $? -eq 0 ]; then
		echo "Test Failed: Using the program with invalid arguments don't return error code."
		echo "Test Failed: Using the program with invalid arguments don't return error code." >> tests.log		
	fi

	echo "custom_package_file extract"
	echo "custom_package_file extract" >> tests.log	
	EIFGENs/custom_package_file/W_code/custom_package_file extract 2> tests.log
	if [ $? -eq 0 ]; then
		echo "Test Failed: Using the program with invalid arguments don't return error code."
		echo "Test Failed: Using the program with invalid arguments don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f File1
	fi

	echo "custom_package_file notvalid error.cpf"
	echo "custom_package_file notvalid error.cpf" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file notvalid error.cpf 2> tests.log
	if [ $? -eq 0 ]; then	
		echo "Test Failed: Using the program with invalid arguments don't return error code."
		echo "Test Failed: Using the program with invalid arguments don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f File1
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi

	echo "custom_package_file notvalid1 error.cpf notvalid2 notvalid3"
	echo "custom_package_file notvalid1 error.cpf notvalid2 notvalid3" >> tests.log	
	EIFGENs/custom_package_file/W_code/custom_package_file notvalid1 error.cpf notvalid2 notvalid3 2> tests.log
	if [ $? -eq 0 ]; then
		echo "Test Failed: Using the program with invalid arguments don't return error code."
		echo "Test Failed: Using the program with invalid arguments don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f File1
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi

	echo "custom_package_file create error.cpf"
	echo "custom_package_file create error.cpf" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file create error.cpf 2> tests.log
	if [ $? -eq 0 ]; then	
		echo "Test Failed: Using the program with invalid arguments don't return error code."
		echo "Test Failed: Using the program with invalid arguments don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f File1
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi

	echo "custom_package_file extract doesnotexist.cpf"
	echo "custom_package_file extract doesnotexist.cpf" >> tests.log	
	EIFGENs/custom_package_file/W_code/custom_package_file extract doesnotexist.cpf 2> tests.log
	if [ $? -eq 0 ]; then
		echo "Test Failed: Using the extract feature with non existing file don't return error code."
		echo "Test Failed: Using the extract feature with non existing file don't return error code." >> tests.log		
	fi
	if [ -f File1 ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f File1
	fi
	if [ -f doesnotexist.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f doesnotexist.cpf
	fi

	echo "custom_package_file create error.cpf doesnotexist.png"
	echo "custom_package_file create error.cpf doesnotexist.png" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file create error.cpf doesnotexist.png 2> tests.log
	if [ $? -eq 0 ]; then	
		echo "Test Failed: Using the create feature with non existing files don't return error code."
		echo "Test Failed: Using the create feature with non existing files don't return error code." >> tests.log		
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi

	echo "custom_package_file create error.cpf tests.log doesnotexist.png"
	echo "custom_package_file create error.cpf tests.log doesnotexist.png" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file create error.cpf tests.log doesnotexist.png 2> tests.log
	if [ $? -eq 0 ]; then	
		echo "Test Failed: Using the create feature with non existing files don't return error code."
		echo "Test Failed: Using the create feature with non existing files don't return error code." >> tests.log		
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi

	echo "custom_package_file extract tests.log"
	echo "custom_package_file extract tests.log" >> tests.log
	EIFGENs/custom_package_file/W_code/custom_package_file extract tests.log 2> tests.log
	if [ $? -eq 0 ]; then	
		echo "Test Failed: Using the extract feature with non valid file don't return error code."
		echo "Test Failed: Using the extract feature with non valid file don't return error code." >> tests.log		
	fi
	if [ -f error.cpf ]; then
		echo "Test Failed: A file has been created on error."
		echo "Test Failed: A file has been created on error." >> tests.log
		rm -f error.cpf
	fi
}

if [ -d "EIFGENs" ]; then
  rm -rf EIFGENs
fi

rm -rf result_*

rm -f error.cpf

rm -f doesnotexist.cpf

rm -f File*

echo "Compiling the application"

echo "Compiling the application" > tests.log

ec -config ../custom_package_file.ecf  -target custom_package_file -c_compile -batch 2>> tests.log

if [ -f EIFGENs/custom_package_file/W_code/custom_package_file ]; then
	echo "The compilation succeeded!"
	echo "The compilation succeeded!" >> tests.log
	echo "Testing error case!"
	echo "Testing error case!" >> tests.log
	error_case
	RANDOM=$(od -An -N2 -i /dev/random)
	nb_tests=$(( ($RANDOM % 5) + 5 ))
	echo "Creating $nb_tests tests."
	echo "Creating $nb_tests tests." >> tests.log
	for i in `seq 0 $nb_tests`; do
		echo "Test number $i of $nb_tests."
		echo "Test number $i of $nb_tests." >> tests.log
		mkdir result_$i
		cd result_$i
		test_iter
		cd ..
	done
else
	echo "The compilation failed!"
	echo "The compilation failed!" >> tests.log
fi

