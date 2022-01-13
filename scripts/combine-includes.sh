#!/bin/bash
INCLUDES_TO_BE_COMBINED="ressources/colors_base.iuml ressources/colors_iteratec.iuml ressources/style_base.iuml ressources/icons.iuml"
COMBINED_INCLUDES_FILE="target/include.iuml"

rm "$COMBINED_INCLUDES_FILE"
echo "@startuml" > "$COMBINED_INCLUDES_FILE"
for INCLUDE in $INCLUDES_TO_BE_COMBINED; do
    echo "' $INCLUDE" >> "$COMBINED_INCLUDES_FILE"
    tail -n+2 "$INCLUDE" | head -n -1 | sed "/^' help output/Q" >> "$COMBINED_INCLUDES_FILE"
    echo "" >> "$COMBINED_INCLUDES_FILE"
done
echo "@enduml" >> "$COMBINED_INCLUDES_FILE"