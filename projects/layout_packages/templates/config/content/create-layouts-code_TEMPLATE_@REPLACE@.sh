#!/bin/sh

{{ mars.app.mlb }} generate-source \
	--config-file {{ project.package.path.<[@ sys.projectName @]> }}/layouts-config/config.json \
	$@

