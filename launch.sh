#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar custombar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."