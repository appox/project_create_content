#!/bin/sh


INSTANCE_NAME="$1"
BASE_PROJECT_NAME="$2"

if [ -z "$INSTANCE_NAME" ] || [ -z "$BASE_PROJECT_NAME" ]; then
    echo "Error: missing instance name parameter" >&2
    echo "Usage: $0 <instanceName> <projectName> [...]" >&2
    exit 1
fi

PROJECT_DIR=/opt/project_create_content/projects/layout_packages
INSTANCE_DIR=$PROJECT_DIR/instance/$INSTANCE_NAME

echo "# create layout package: $INSTANCE_NAME model"
echo "# INSTANCE_DIR: $INSTANCE_DIR"

project-create create \
	--template_dir $PROJECT_DIR/templates/config/content \
	--base_properties_file $INSTANCE_DIR/properties/base.properties \
	--properties_file $INSTANCE_DIR/properties/config.properties \
	--env_properties_file /opt/project_create_content/env/mars.properties \
	--project_name ${BASE_PROJECT_NAME}_config \
	$@

