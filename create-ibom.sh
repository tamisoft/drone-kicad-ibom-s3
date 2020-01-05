#!/bin/sh

set -x

xvfb-run --auto-servernum --server-args "-screen 0 1024x768x24" \
python3 InteractiveHtmlBom/InteractiveHtmlBom/generate_interactive_bom.py --no-browser --no-internal-aws-sdk --layer-view F \
--dest-dir $PLUGIN_BASE/$PLUGIN_PROJECT/$PLUGIN_FOLDER $PLUGIN_PROJECT.kicad_pcb
