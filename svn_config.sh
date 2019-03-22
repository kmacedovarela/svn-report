project="MyProjectFolderName"

year="2019"

# example: /my/cloned/svn/rpository/branches | http://my.svn.url/svn/project . Can will be determined by the presence of a local path or remote path
#svn_path="/path/to/your/project/branches/"
svn_path="http://urlsvn/project/branches/"

branch=$1  # examples:  trunk | 1.0.4

begin=$year"-$2"   # example: 2018-04-01
end=$year"-$3"     # example: 2018-04-15

users=" --search username1 --search username2 --search username3"

