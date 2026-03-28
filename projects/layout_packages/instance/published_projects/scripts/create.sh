#!/bin/sh

echo "# create published projects layout package: model"

PROJECT_DIR=/opt/project_create_content/projects/layout_packages
INSTANCE_DIR=$PROJECT_DIR/instance/published_projects

project-create create \
	--template_dir $PROJECT_DIR/templates/models/content \
	--base_properties_file $INSTANCE_DIR/properties/base.properties \
	--properties_file $INSTANCE_DIR/properties/model.properties \
	--env_properties_file /opt/project_create_content/env/mars.properties \
	--project_name mars_layout_base_published_projects_model \
	$@

