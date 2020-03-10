# userresearch_github_code
Repository for pulling and pushing r code within the team
# Description

Within the team, we want to be able to easily collaborate in R code. For that we want to make it a routine to pull and submit code to Github and work with each other’s code.

The task is to set the technical foundation and introduce a workflow by using Rstudio and Github.

# Configure Github

The first step is to download git:
https://www.git-scm.com/
Secondly, open the Terminal and run the following lines (You have to create a github account):

git config --global	user.name “Your	Username”

git config --global	user.email “your.email@example.com”


# Configure RStudio

RStudio:	Tools-> Global	Options -> Git/SVN
The path for the git executable should be:

usr/bin/git
If	the	path	to	the	Git executable	is	not	
correct,	search	for	‘git’	on	your	
computer.	Make	sure	to	choose	the	file	
in	folder	‘bin’
Press Ok and restart RStudio

More info on the topic : https://support.rstudio.com/hc/en-us/articles/200532077?version=1.2.5033&mode=desktop 

Workflow	in	RStudio:
1. Always pull	the	newest	code	before you	start	making	changes
    o Work	on	the	code	and	make	changes
2. Select	the	files	that	you	want	to	upload	to	GitHub
3. Commit	the	code	and	write	a	short	comment	about	changes
4. Push	the	code	to	GitHub

Clone	your	GitHub	repository
  o RStudio:	File -> New	Project-> Version	Control,	select	Git
  o Copy	your	repository	URL	from	GitHub	into	the	corresponding	field	in	RStudio
  o Choose	a	file	directory	where	you	would	like	to	save	it	on	your	computer
