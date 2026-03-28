#!/bin/bash

set -e  # Abbruch bei jedem Fehler (Exit-Code != 0)

INSTANCE_NAME="$1"
PROJECT_NAME="$2"

if [ -z "$INSTANCE_NAME" ] || [ -z "$PROJECT_NAME" ]; then
    echo "Error: missing instance name parameter" >&2
    echo "Usage: $0 <instanceName> <projectName> [...]" >&2
    exit 1
fi

SCRIPTS_DIR="/opt/project_create_content/projects/layout_packages/scripts"

echo "# create all Layout $INSTANCE_NAME packages"

$SCRIPTS_DIR/create_config_package.sh $INSTANCE_NAME $PROJECT_NAME
$SCRIPTS_DIR/create_model_package.sh $INSTANCE_NAME $PROJECT_NAME
$SCRIPTS_DIR/create_tag_package.sh $INSTANCE_NAME $PROJECT_NAME

echo "# 1] builder aufrufen, um properties fuer die neuen projects zu erstellen"
echo "# Info: funktioniert nur weil pubspec.yaml stubs (not _TEMPLATE) generiert werden."
echo "#"
echo "# in das builder project wecseln."
echo "#"
echo "> ./pm-update.sh"

echo "# 2] refresh_libs.sh des projects aufrufen (in den entspr. Folder wechsel)"
echo "#"
echo "# in dem project root"
echo "#"
echo "./refresh_libs.sh"

echo "# 3] layouts code erstellen. in das neue config project wechseln"
echo "#"
echo "# cd ..config"
echo "#"
echo "./sh ./create-layouts-code.sh"

echo "# 4] projects aktuallisieren (im basis dir der neuen packages)"
echo "#"
echo "mpm pub update"

echo "# ---- Integration in das project"

echo "# 5] checken - sollte keine compile Fehler mehr geben."
echo "... DONE!"

