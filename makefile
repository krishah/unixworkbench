TODAY=$(date)
LINES=	$(wc -l guessinggame.sh | egrep -o [0-9]+) 

all:	readme
    
readme:	guessinggame.sh
	touch README.md
	echo "#Unix Workbench Course " >> README.md
	echo "##GIT Project " >> README.md
	echo  "Date and time *$(value TODAY)*" >>  README.md 
	echo "Project has **$(value LINES)** lines" >> README.md
    

