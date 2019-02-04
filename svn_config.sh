project="MyProjectFolderName"
ano="2019"
branch=$1  # exemplo:  trunk, 1.0.4
begin=$ano"-$2"   # exemplo: 2018-04-01
end=$ano"-$3"     # exemplo: 2018-04-15
users=" --search username1 --search username2 --search username3"
svn_path="/path/to/your/project/branches/"