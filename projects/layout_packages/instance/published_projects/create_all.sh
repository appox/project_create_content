#!/bin/bash

set -e  # Abbruch bei jedem Fehler (Exit-Code != 0)

INSTANCE_NAME="published_projects"
SCRIPTS_DIR="/opt/project_create_content/projects/layout_packages/scripts"

echo "# create all Layout $INSTANCE_NAME packages"


$SCRIPTS_DIR/create_config_package.sh $INSTANCE_NAME
$SCRIPTS_DIR/create_model_package.sh $INSTANCE_NAME
$SCRIPTS_DIR/create_tag_package.sh $INSTANCE_NAME

echo "SUCCESS hier weitere check -> vorherige Fehler der create scripts erkennen"
echo "mtr/refresh/create-layuts/mpm pub update"

echo "# 1] templates generieren -> wichtig damit pubspec.yaml erstellt wird."
echo "~/bin/mtr replace"

echo "# 2] builder aufrufen, um properties fuer die neuen projects zu erstellen"
echo ""

echo "# 3] refresh_libs.sh des projects aufrufen (in den entspr. Folder wechsel)"
echo "./refresh_libs.sh"

echo "# 4] layouts code erstellen. in das neue config project wechseln"
echo "./sh ./create-layouts-code.sh"

echo "# 5] projects aktuallisieren (im basis dir der neuen packages)"
echo "mpm pub update"

echo "# 6] checken - sollte keine compile Fehler mehr geben."
echo "... DONE!"

