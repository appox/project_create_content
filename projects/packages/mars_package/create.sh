# test create

PROJECT_DIR=/opt/project_create_content/projects/packages/mars_package

# aktuell gibt es nur eine Instanz
INSTANCE_DIR=$PROJECT_DIR/instance/default

echo "# CREATE DEFAULT PACKAGE"
echo "#"
echo "# PROJECT_DIR: $PROJECT_DIR"
echo "# INSTANCE_DIR: $INSTANCE_DIR"
echo "#"

project-create create \
	--template_dir $PROJECT_DIR/templates/content \
	--properties_file $INSTANCE_DIR/properties/config.properties \
    --env_properties_file /opt/project_create_content/env/mars.properties \
	--project_name $@
