#!/bin/bash
# The scratchpad will live on an unused tag. Which tags are used depends on your
# config, but rivers default uses the first 9 tags.
scratch_tag=$((1 << 20 ))

# Toggle the scratchpad with Super+P
riverctl map normal Mod4 D toggle-focused-tags ${scratch_tag}

# Send windows to the scratchpad with Super+Shift+P
riverctl map normal Mod4+Shift D set-view-tags ${scratch_tag}

# Set spawn tagmask to ensure new windows don't have the scratchpad tag unless
# explicitly set.
all_but_scratch_tag=$(( ((1 << 32) - 1) ^ $scratch_tag ))
riverctl spawn-tagmask ${all_but_scratch_tag}
