#!/usr/bin/env bash
# A Script for killing pdf viewer so that reolad the latest compiled pdf file.
pid=$(ps aux | rg -N "[P]DF" | awk '{print $2}')
if [[ $pid != "" ]]; then
  echo Killing PDF expert $pid...
  kill $pid
fi
