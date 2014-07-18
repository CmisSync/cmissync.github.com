TCK=$1

INFO=`grep "\"tckResultINFO\"" $TCK | wc -l`
OK=`grep "\"tckResultOK\"" $TCK | wc -l`
SKIPPED=`grep "\"tckResultSKIPPED\"" $TCK | wc -l`
WARNING=`grep "\"tckResultWARNING\"" $TCK | wc -l`
FAILURE=`grep "\"tckResultFAILURE\"" $TCK | wc -l`
EXCEPTION=`grep "\"tckResultUNEXPECTED_EXCEPTION\"" $TCK | wc -l`

SCORE=$(expr $OK - $EXCEPTION)

echo "SCORE: $SCORE"
echo "INFO: $INFO"
echo "OK: $OK"
echo "SKIPPED: $SKIPPED"
echo "WARNING: $WARNING"
echo "FAILURE: $FAILURE"
echo "EXCEPTION: $EXCEPTION"
