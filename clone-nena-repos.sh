#!/bin/bash

gh repo list NENA911 --limit 30 | while read -r repo _; do gh repo clone "$repo" "$repo"; done
