#!/bin/bash
COURSE="devops from curent script"

echo "before calling other script, course: $COURSE"
echo "process ID of currecnt scipt: $$"

#  1 way./otherscript.sh
source ./otherscript.sh #2 nd way
echo "after calling other script course: $COURSE"

