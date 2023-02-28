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

# Defense
DEFENSE_DIR="$RUNNABLE/defense"
DEFENSE1="$DEFENSE_DIR/defensive_reference_monitor1.r2py"

# Offense
OFFENSE_DIR="$RUNNABLE/offense"
OFFENSE0="$OFFENSE_DIR/attackcase0.r2py"
OFFENSE1="$OFFENSE_DIR/attackcase1.r2py"
OFFENSE2="$OFFENSE_DIR/attackcase2.r2py"

# Generic to run the same script
DEFENSE="defensive_reference_monitor.r2py"
OFFENSE="attackcase.r2py"

#echo "Activate Venv"
#$activate #doesn't work through a bash shell rather than this parent terminal

cd "$RUNNABLE"

echo "Test Tutorial:"
python "$RUN_REPY" "$RUNNABLE/tutorial/restrictions.test" "$RUNNABLE/tutorial/example.1.1.r2py"

echo "Cleanup Previous Files"
rm -f "$DEFENSE" "$OFFENSE"

echo "Copying Defensive Layer"
cp "$DEFENSE1" "$DEFENSE"

echo "|Test Example 0:|"
cp "$OFFENSE0" "$OFFENSE" #Copying Attack 0
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE" "$OFFENSE"

echo "|Test Example 1:|"
cp "$OFFENSE1" "$OFFENSE" #Copying Attack 1
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE" "$OFFENSE"

echo "|Test Example 2:|"
cp "$OFFENSE2" "$OFFENSE" #Copying Attack 2
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" "$DEFENSE" "$OFFENSE"