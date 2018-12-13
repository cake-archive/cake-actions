FROM cakebuild/cake:v0.30.0-2.1-sdk as base

FROM base as cake-build
LABEL "com.github.actions.name"         = "Cake task"
LABEL "com.github.actions.description"  = "Run Cake task"
LABEL "com.github.actions.icon"         = "box"
LABEL "com.github.actions.color"        = "yellow"

LABEL "repository" = "https://github.com/gep13/cake-actions"
LABEL "homepage"   = "https://github.com/cake-build/cake"
LABEL "maintainer" = "Gary Ewan Park <gep13@gep13.co.uk>"

ADD entrypoint.sh  /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
