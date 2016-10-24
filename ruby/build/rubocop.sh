#!/usr/bin/env bash

set -e

rubocop \
--require rubocop/formatter/checkstyle_formatter \
--format RuboCop::Formatter::CheckstyleFormatter -o build/logs/checkstyle-result.xml \
--format html -o build/reports/html/index.html || true


