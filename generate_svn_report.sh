#!/bin/bash 

if [[ -n "$1" ]]; then
        project="MyProjectFolderName"
	branch=$1  # exemplo:  trunk, 1.0.4
	begin="2018-$2"   # exemplo: 2018-04-01
	end="2018-$3"     # exemplo: 2018-04-15
	users=" --search username1 --search username2 --search username3"

	export PROJECT_DIR=/path/to/your/project/branches/$branch/$project
	svn up $PROJECT_DIR

	echo ""
	echo "Gerando report de $branch entre $begin e $end "
	echo ""

	svn log $PROJECT_DIR -v --limit 4000 $users --xml --revision {$begin}:{$end} > svn_log.xml

	java -jar saxon9he.jar -o:report.html svn_log.xml style.xsl

	# Substituindo o título do report com "$1"
        titulo="Relatório sobre $branch entre $begin e $end"
	sed -i -- "s/TITULO/$titulo/g" report.html
else
	echo "Usage ex: ./generate_svn_report.sh trunk 04-15 04-30"
fi
