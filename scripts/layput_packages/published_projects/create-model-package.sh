#!/bin/sh

echo "# create published projects layout package: model"

project-create create \
	--template_dir /opt/project_create_content/templates/mars_layout/models/content \
	--properties_file /opt/project_create_content/properties/layouts/mars_published_projects_model.properties \
	--project_name mars_layout_base_published_projects_model


