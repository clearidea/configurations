#!/usr/bin/env bash

~/node_modules/jshint/bin/jshint app/assets/javascripts/ --checkstyle-reporter > build/logs/checkstyle-jshint.xml | true

~/node_modules/jshint/bin/jshint app/assets/javascripts/ --jslint-reporter > build/logs/jslint.xml | true

