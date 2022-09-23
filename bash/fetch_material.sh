#!/bin/bash

SCRIPTDIR=/home/quagadmin/courses/lbgfs2021/bash
DIRTOFETCH=ex/lbgfs2021_ex04_blup
# DIRTOFETCH=sol/gel_ex04
TESTSTUDENT=/home/quagadmin/courses/lbgfs2021/students/test_student_usernames_lbgfs2021.txt
STUDENTUSER=/home/quagadmin/courses/lbgfs2021/students/student_usernames_lbgfs2021.txt
#' fetch individual directory
#' change to progdir
cd $SCRIPTDIR

#' fetch for test student
cat $TESTSTUDENT | while read s
do
  echo " * Student: $s"
  ./fetch.sh -s $s -d $DIRTOFETCH
  sleep 2
done

#' fetch for real students
cat $STUDENTUSER | while read s
do
  echo " * Student: $s"
  ./fetch.sh -s $s -d $DIRTOFETCH
  sleep 2
done

# check content
cat $STUDENTUSER | while read s
do
  echo " * Student: $s"
  ls -l /home/quagadmin/courses/lbgfs2021/home/$s/lbgfs2021/$DIRTOFETCH
  sleep 2
done
