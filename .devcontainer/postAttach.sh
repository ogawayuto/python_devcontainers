git config commit.template ${CONTAINER_WORKSPACE_FOLDER}/.gitmessage
poetry config virtualenvs.in-project true && \
poetry install
