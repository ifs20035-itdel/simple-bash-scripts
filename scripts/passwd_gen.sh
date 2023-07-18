#!/bin/bash

# generate_passwd() function for generating a random password

generate_passwd() {
	# Define option
	local length="$1"
	local special_char= "$2"
	local number= "$3"
	local up_case="$4"


	local chars="poiuytrewqlkjhgfdsamnbvcxz"
	local spec_char="!@#$%^&*()_-+=~<>?/{}[]"
	local numb="1234567890"
	local uppercase="POIUYTREWQLKJHGFDSAMNBVCXZ"I
	local all_chards="$chars"


	[["$special_char"== "true"]] && all_chards+="$spec_char"
	[["$number"== "true"]] && all_chards+="$numb"
	[["$up_case"== "true"]] && all_chards+="$uppercase"

	##Generate passwd
	password=""
	for ((i=0;i<length;i++));do
		random_char="$allchards:RANDOM%${#all_chards}:1"
		password+="$random_char"
	done

	echo"$password"
}


## PROMPT

read -p "Enter password length: " pass_length
read -p "Inclue special char?(y/n): " special_char
read -p "Include numbers?(y/n): " numbers
read -p "Include uppercase letters?(y/n): " up_case

special_char="${special_char,,}"
numbers="${numbers,,}"
up_case="${upcase,,}"


if [[""]]
