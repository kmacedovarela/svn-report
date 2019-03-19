project="MyProjectFolderName"

year="2019"

type="remote" # example: remote | local . Can also be determined by the presence of a local path or remote path
#svn_path="/path/to/your/project/branches/"
svn_path="http://urlsvn/project/branches/"


branch=$1  # examples:  trunk | 1.0.4

begin=$year"-$2"   # example: 2018-04-01
end=$year"-$3"     # example: 2018-04-15

users=" --search username1 --search username2 --search username3"

