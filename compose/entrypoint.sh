#!/bin/bash
set -e

if [ "$1" = 'runserver' ]; then
    shift
    cd src
    exec python -m pelican -lr content -s core/settings.py -o output -b 0.0.0.0 --ignore-cache $@
elif [ "$1" = 'lint' ]; then
    shift
    OPTS=${@:-'.'}
    echo "-- ruff lint --" && ruff check $OPTS || EXIT=$?
    echo "-- ruff format --" && ruff format --check $OPTS || EXIT=$?
    MYPY_OPTS=${@:-'src/'}
    echo "-- mypy --" && mypy $MYPY_OPTS || EXIT=$?
    exit ${EXIT:-0}
elif [ "$1" = 'fmt' ]; then
    shift
    OPTS=${@:-'.'}
    echo "-- ruff lint --" && ruff check --fix $OPTS
    echo "-- ruff format --" && ruff format $OPTS
    exit 0
elif [ "$1" = 'test' ]; then
    shift
    OPTS=${@:-'src/'}
    echo "-- bandit --" && bandit -r $OPTS
    echo "-- pytest --" && pytest --cov=src --cov-report=json
fi

exec "$@"
