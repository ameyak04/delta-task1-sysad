#####Following steps were followed to creat tar file with inputfiles on source Machine######
#in home directory use :-
tar -cvf /tmp/sysAdtask1inputfiles.tar ./inputfiles


################## For Extracting the file on Target Machine Follow following instructions ####

#Please login  user account with Sudo previledges.

sudo -i ( to Root) 

Assuming the home directory of root is /root 

#Please extract tar file 

tar -xvf /tmp/sysAdtask1inputfiles.tar

#The Tar file has all the input files 
/root/inputfiles has all the inputfiles


#######Following steps were followed to creat tar file with scripts on source Machine######
#in home directory use :-
tar -cvf /tmp/sysAdtask1scripts.tar ./scripts

################## For Extracting the file on Target Machine Follow following instructions ####

#Please login  user account with Sudo previledges.

sudo -i ( to Root) 

Assuming the home directory of root is /root 

Please extract tar file 

tar -xvf /tmp/sysAdtask1scripts.tar

#The Tar file has all the scripts
/root/scripts has all the scripts 

######go in root and use to set aliases##################
nano .bashrc
then add aliases as follows
alias genStudent="sudo $HOME/scripts/genStudent"
alias permit="sudo $HOME/scripts/permit"
alias delStudents="sudo $HOME/scripts/delStudents"

###################Run genStudent script first ###############################
genStudent  ---> Afer running the Script it  Gives you 2 Options to feed Input File or Manually enter data. 
This script will also deploy scripts for HAD, Warden, and Students in their respective directories


############Run permit script#########################################
permit  ---> This script will set permissions for the files in Student directories

###########################to get into users account use the following command in root :- #########################################
su - username

to access sudo priveledges of HAD use ---> "sudo"    before the command you want to execute
NOTE: HAD passowrd has been set to "hadpasswd"

################################################to run any script(./<scriptpath>):-########################################### 

There are scripts like messallocation4students , Feebreakupin and Signout4Students home directory of student 
There are scripts like messallocation4HAD in home directory of HAD 
There are scripts like updateDefaulter Signout4HW in home directoey each hostel warden 
 
Run those scripts by su - <user> 

Example is 

1)for running updateDefaulter GarnetB warden can use ---> ./home/GarnetB/updateDefaulter
2)for running messallocation4HAD HAD will use ---> ./home/HAD/messallocation4HAD



#################################################Super User Task########################################### 
1) Student will request for Signout using Signout4Students script in the home directory of each student
2)Hostel warden will approve or deny using Return4HW script in his home directory which will update decision in userdetails.txt in student home directory 
3)Hostel Warden will run Signout4Defaulter to identify defaulter who do not return on time and update defaulters in SignoutDefaulter.txt in his home directory


####################to view/edit or basically access a file (nano <scriptpath>):-###########################
1)for accessing userDetails.txt of Crista,  Crista,GarnetB Warden and HAD can use ----> nano /home/GarnetB/0/Crista/userDetails.txt
2)for accessing mess.txt Crista can use nano /home/HAD/mess.txt

to see present directory contents use :- ls( ls -al gives you more information)
to see particular directory contents use ----> ls <path>( ls -al <path> gives you more information)
to see and concatenate contents of a file and print in standard output use ----> cat <path>
