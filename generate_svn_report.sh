#!/bin/bash 

if [[ -n "$1" ]]; then
    
	. "./svn_config.sh"

	if [ [[ "$type" = "remote" ]] -o [[ $svn_path == http* ]] ] ; then
                mkdir $project
                svn checkout $svn_url/$branch project/$branch
                export PROJECT_DIR=project/$branch/$project	

        else
		export PROJECT_DIR=$svn_path/$branch/$project
	        svn up $PROJECT_DIR      
        fi

	echo ""
	echo "Creating report on branch $branch from: $begin to $end "
	echo ""

	svn log $PROJECT_DIR -v --limit 4000 $users --xml --revision {$begin}:{$end} > svn_log.xml

	java -jar saxon9he.jar -o:report_$branch.html svn_log.xml style.xsl

	# Changing report title with: "$1"
        titulo="Relatório sobre $branch entre $begin e $end"
	sed -i -- "s/TITULO/$titulo/g" report.html

	# Removendo a pasta project e style.xsl
        rm -rf project 
else
	echo "Usage ex: ./generate_svn_report.sh trunk 04-15 04-30"
fi
