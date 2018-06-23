
Create new app in openshift with template JBoss EAP 7.1 (no https)

    oc new-app --template=eap71-basic-s2i -p APPLICATION_NAME="my-oc-helloworld" -p SOURCE_REPOSITORY_URL="https://github.com/daniel-mast/oc-helloworld" -p SOURCE_REPOSITORY_REF="master" -p CONTEXT_DIR=""

