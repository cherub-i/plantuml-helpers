#!/bin/bash
INCLUDES_TO_BE_COMBINED="colors_audi.iuml colors_base.iuml colors_iteratec.iuml style_base.iuml"
COMBINED_INCLUDES_FILE="target/include.iuml"

rm "$COMBINED_INCLUDES_FILE"
echo "@startuml" > "$COMBINED_INCLUDES_FILE"
for INCLUDE in $INCLUDES_TO_BE_COMBINED; do
    tail -n+2 "ressources/$INCLUDE" | head -n -1 | sed "/^' help output/Q" >> "$COMBINED_INCLUDES_FILE"
done
echo "@enduml" >> "$COMBINED_INCLUDES_FILE"