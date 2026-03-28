#!/bin/sh

echo "# create published projects layout package: model"

project-create create \
	--template_dir /opt/project_create_content/templates/mars_layout/models/content \
	--base_properties_file /opt/project_create_content/properties/layouts/published_projects/base.properties \
	--properties_file /opt/project_create_content/properties/layouts/published_projects/model.properties \
	--env_properties_file /opt/project_create_content/properties/layouts/env/mars.properties \
	--project_name mars_layout_base_published_projects_model	


