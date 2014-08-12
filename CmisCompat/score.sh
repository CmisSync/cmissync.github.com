TCK=$1

INFO=`grep "\"tckResultINFO\"" $TCK | wc -l`
OK=`grep "\"tckResultOK\"" $TCK | wc -l`
SKIPPED=`grep "\"tckResultSKIPPED\"" $TCK | wc -l`
WARNING=`grep "\"tckResultWARNING\"" $TCK | wc -l`
FAILURE=`grep "\"tckResultFAILURE\"" $TCK | wc -l`
EXCEPTION=`grep "\"tckResultUNEXPECTED_EXCEPTION\"" $TCK | wc -l`
CAPABILITIES=`grep "capability: " $TCK | grep -v "capability: false" | grep -v "capability: NONE" | wc -l`

let SCORE=" ($OK - $EXCEPTION) * $CAPABILITIES "

echo "SCORE: $SCORE"
echo "CAPABILITIES: $CAPABILITIES"
echo "INFO: $INFO"
echo "OK: $OK"
echo "SKIPPED: $SKIPPED"
echo "WARNING: $WARNING"
echo "FAILURE: $FAILURE"
echo "EXCEPTION: $EXCEPTION"
