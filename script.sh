#!/bin/bash

echo "Разработчик: Харина Ирина 738-1"
echo "Программа для блокирования/разблокирования пользователя"
echo ""

while true; do
	echo "Введите имя пользователя: "
	read username
	if grep $username /etc/passwd
	then
		echo "Заблокировать или разблокировать? (l/u)"
		read answ
		if [ $answ = l ]
		then
			passwd -l $username
			echo "Пользователь заблокирован! Хотите продолжить? (y/n)"
			read otvet
			if [ $otvet = y ] 
			then continue
			elif [ $otvet = n ]
			then break
			else echo "Введено некорректное значение. Будем продолжать? (y/n)"
				read otv
				if [ $otv = y ] 
				then continue
				else break
				fi
			fi
		elif [ $answ = u ]
		then
			passwd -u $username
			echo "Пользователь разблокирован! Хотите продолжить? (y/n)"
			read otvetik
			if [ $otvetik = y ] 
			then continue
			elif [ $otvetik = n ]
			then break
			else 
				echo "Введено некорректное значение. Будем продолжать? (y/n)"
				read otvit
				if [ $otvit = y ] 
				then continue
				else break
				fi
			fi
		else 
			echo "Введено некорректное значение. Будем продолжать? (y/n)"
			read answer
			if [ $answer = y ] 
			then continue
			else break
			fi
		fi
	else 
		echo "Такой пользователь не найден! Не хочешь попробовать еще? (y/n)"
		read answ
		if [ $answ = y ] 
		then continue
		elif [ $answ = n ]
		then break
		else 
			echo "Введено некорректное значение. Будем продолжать? (y/n)"
			read otvt
			if [ $otvt = y ] 
			then continue
			else break
			fi
		fi
	fi
done
