#!/bin/bash
#run with command: 
#sh 'C:/Users/leejo/Personal/Coding Projects/AB reference monitor/repy_v2/RUNNABLE/run_scripts/run_pt1.sh'

ACTIVATE="C:/Users/leejo/Personal/Coding Projects/AB reference monitor/venv_py2/Scripts/activate"

REPY_V2="C:/Users/leejo/Personal/Coding Projects/AB reference monitor/repy_v2"
RUNNABLE="$REPY_V2/RUNNABLE"
RUN_REPY="$RUNNABLE/repy.py"
RESTRICTIONS="$RUNNABLE/tutorial/restrictions.test"
ENCASEMENTLIB="$RUNNABLE/encasementlib.r2py"
DEFENSE="$RUNNABLE/defense/defensive_reference_monitor.r2py"
OFFENSE="$RUNNABLE/offense/attackcase0.r2py"


echo "Activate Venv"
$activate #doesn't work through a bash shell rather than this parent terminal

echo "Test Tutorial:"
python "$RUN_REPY" "$RUNNABLE/tutorial/restrictions.test" "$RUNNABLE/tutorial/example.1.1.r2py"

echo "Test Example 1:"
python "$RUN_REPY" "$RESTRICTIONS" "$ENCASEMENTLIB" defensive_reference_monitor.r2py attackcase0.r2py

#python repy.py restrictions.test encasementlib.r2py defensive_reference_monitor0.r2py attackcase0.r2py





# #run with command: sh (path to this file)

# REPY_V2='C:\\Users\\leejo\\Personal\\Coding\ Projects\\AB reference monitor\\repy_v2'
# RUNNABLE="$REPY_V2\\RUNNABLE"

# ACTIVATE='C:\Users\leejo\Personal\Coding Projects\AB reference monitor\venv_py2\Scripts\activate'

# RUN_REPY="$RUNNABLE\\repy.py"

# # echo $RUN_REPY
# echo "Activate Venv"
# # $activate

# echo "Test Tutorial"
# RUN='C:\Users\leejo\Personal\Coding Projects\AB reference monitor\repy_v2\RUNNABLE\repy.py'
# echo \' $RUN \'
# python $(realpath '$RUN')
# #tutorial/restrictions.test tutorial/example.1.1.r2py

# # echo "Test Example 1"
# # python repy.py tutorial/restrictions.test encasementlib.r2py defensive_reference_monitor.r2py attackcase0.r2py 

#NOTES
# # python repy.py restrictions.default encasementlib.r2py [security_layer].r2py [attack_program].r2py 
# # python ../repy.py restrictions.default encasementlib.r2py defensive_reference_monitor.r2py attackcase0.r2py 

# # python ../repy.py restrictions.test example.1.1.r2py