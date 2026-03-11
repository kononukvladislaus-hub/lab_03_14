#!/bin/bash
read -p "Choose paper, scissors or rock: " user_choice
if [ "$user_choice" != "paper" ] && [ "$user_choice" != "scissors" ] && [ "$user_choice" != "rock" ]; then
	echo "Are you stupid, man?"
	echo "Please repeat and choose paper, scissors or rock"
	exit 1
else 
	echo "Cool choice"
fi
random_number=$((RANDOM%100+1))
if [ $random_number -ge 42 ] && [ $random_number -le 67 ]; then
	#unfair game
	result="you lose, bro"
	game="unfair"
	if [ "$user_choice" == "paper" ]; then
		bot_choice="scissors"
	elif [ "$user_choice" == "scissors" ]; then
		bot_choice="rock"
	else
		bot_choice="paper"
	fi
else
	#fair game
	game="fair"
	bot_number_choice=$((RANDOM%3+1))
	if [ "$bot_number_choice" = "1" ]; then
		bot_choice="paper"
	elif [ "$bot_number_choice" = "2" ]; then
		bot_choice="scissors"
	else
		bot_choice="rock"
	fi

	if [ "$bot_choice" = "$user_choice" ]; then
		result="draw"
	elif [[ "$bot_choice" == "paper" && "$user_choice" == "scissors" ]] ||
	     [[ "$bot_choice" == "scissors" && "$user_choice" == "rock" ]] ||
	     [[ "$bot_choice" == "rock" && "$user_choice" == "paper" ]]; then
		result="win"
	else 
		result="lose"
	fi
fi

echo "------------------"
echo "Game: $game"
echo "User choice: $user_choice"
echo "Bot_choice: $bot_choice"
echo "Result: $result"
echo "------------------"



