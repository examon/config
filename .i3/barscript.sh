#!/bin/bash

echo '{ "version": 1 }'

echo '['

echo '[],'

readonly PRE='{ "separator": true, "separator_block_width": 24, "full_text": "'
readonly COL='", "color": "'
readonly BCK='", "background": "'
readonly CER='" }'

while :
do
  DATE=$PRE"$(date +"%a %d.%m.%Y %H:%M:%S")"$COL'#93A1A1'$CER

  # daily aggregation
  daily_current_seconds=$(head -n 5 ~/.workrave/state | tail -n 1 | cut -f 3 -d ' ')
  daily_current_minutes=$(($daily_current_seconds / 60))
  daily_limit_seconds=$(cat .workrave/workrave.ini | grep daily_limit.limit | cut -f 2 -d "=")
  daily_limit_minutes=$(($daily_limit_seconds / 60))
  if (( daily_current_minutes > daily_limit_minutes )); then
    DAILY=$PRE"$(echo $daily_current_minutes"/"$daily_limit_minutes )"$COL'#002B36'$BCK'#dc322f'$CER
  else
    DAILY=$PRE"$(echo $daily_current_minutes"/"$daily_limit_minutes )"$COL'#93A1A1'$CER
  fi

  # session aggregation
  rest_current_seconds=$(head -n 4 ~/.workrave/state | tail -n 1 | cut -f 3 -d ' ')
  rest_current_minutes=$(($rest_current_seconds / 60))
  rest_limit_seconds=$(cat .workrave/workrave.ini | grep rest_break.limit | cut -f 2 -d "=")
  rest_limit_minutes=$(($rest_limit_seconds / 60))
  if (( rest_current_minutes > rest_limit_minutes )); then
    REST=$PRE"$(echo $rest_current_minutes"/"$rest_limit_minutes )"$COL'#002B36'$BCK'#dc322f'$CER
  else
    REST=$PRE"$(echo $rest_current_minutes"/"$rest_limit_minutes )"$COL'#93A1A1'$CER
  fi

  output="$REST, $DAILY, $DATE"

  # usage aggregator indication
  colors=("#00FF00", "#FFFF00", "#FF7F00", "#FF0000", "#FF0000", "#FF0000", "#FF0000", "#FF0000", "#FF0000")
  end=$(( daily_current_minutes / (rest_limit_minutes * 4) ))
  for i in $(seq 1 $end)
  do
    BLOCK=$PRE"$(echo " ${end} " )"$COL'#002B36'$BCK${colors[$i]}$CER
    output="$BLOCK, $output"
  done

  # final output
  echo "[$output]," || exit 1

  # sleep timer, even more than 1s should be enough
  sleep 1s;
done
