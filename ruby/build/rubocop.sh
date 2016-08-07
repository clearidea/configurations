set -e

rubocop \
--require rubocop/formatter/checkstyle_formatter \
--format RuboCop::Formatter::CheckstyleFormatter -o reports/xml/checkstyle-result.xml \
--format html -o reports/html/index.html || true
