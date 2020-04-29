make README.md:
	touch README.md

	echo "Title: Guessing game" > README.md

	echo -n "Date: " >> README.md
	date >> README.md

	echo -n "Lines of code: " >> README.md
	wc -l  < guessinggame.sh >> README.md