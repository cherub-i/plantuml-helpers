#!/bin/bash
COMBINED_INCLUDES_FILE="target/include.iuml"

rm "$COMBINED_INCLUDES_FILE"
echo "@startuml" > "$COMBINED_INCLUDES_FILE"
tail -n+2 ressources/colors_audi.iuml | head -n -1 >> "$COMBINED_INCLUDES_FILE"
tail -n+2 ressources/colors_iteratec.iuml | head -n -1 >> "$COMBINED_INCLUDES_FILE"
tail -n+2 ressources/style_base.iuml | head -n -1 >> "$COMBINED_INCLUDES_FILE"
echo "@enduml" >> "$COMBINED_INCLUDES_FILE"