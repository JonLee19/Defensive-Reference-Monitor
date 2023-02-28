#!/bin/bash
#run with command: 
#sh 'C:/Users/leejo/Personal/Coding Projects/AB reference monitor/repy_v2/RUNNABLE/run_scripts/run_pt1.sh'
#sh 'C:/Users/leejo/Personal/Coding Projects/AB reference monitor/repy_v2/RUNNABLE/run_pt1.sh'


ACTIVATE="C:/Users/leejo/Personal/Coding Projects/AB reference monitor/venv_py2/Scripts/activate"

REPY_V2="C:/Users/leejo/Personal/Coding Projects/AB reference monitor/repy_v2"
RUNNABLE="$REPY_V2/RUNNABLE"
RUN_REPY="$RUNNABLE/repy.py"
RESTRICTIONS="$RUNNABLE/tutorial/restrictions.test"
ENCASEMENTLIB="$RUNNABLE/encasementlib.r2py"
# DEFENSE="$RUNNABLE/defense/defensive_reference_monitor.r2py"
# OFFENSE="$RUNNABLE/offense/attackcase0.r2py"
DEFENSE1=defensive_reference_monitor1.r2py
OFFENSE0=attackcase0.r2py
OFFENSE1=attackcase1.r2py
OFFENSE2=attackcase2.r2py


#echo "Activate Venv"
#$activate #doesn't work through a bash shell rather than this parent terminal

echo "Test Tutorial:"
python "$RUN_REPY" "$RUNNABLE/tutorial/restrictions.test" "$RUNNABLE/tutorial/example.1.1.r2py"

echo "Test Example 0:"
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE1" "$OFFENSE0"

echo "Test Example 1:"
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE1" "$OFFENSE1"

echo "Test Example 2:"
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE1" "$OFFENSE2"