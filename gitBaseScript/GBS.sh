#!/bin/bash

# Create an empty README.md file
touch README.md

# Create a .gitignore file with common patterns
cat <<EOL > .gitignore
target/
!.mvn/wrapper/maven-wrapper.jar
!**/src/main/**/target/
!**/src/test/**/target/

### IntelliJ IDEA ###
.idea/.gitignore
.idea/modules.xml
.idea/jarRepositories.xml
.idea/compiler.xml
.idea/libraries/
*.iws
*.iml
*.ipr

### Eclipse ###
.apt_generated
.classpath
.factorypath
.project
.settings
.springBeans
.sts4-cache

### NetBeans ###
/nbproject/private/
/nbbuild/
/dist/
/nbdist/
/.nb-gradle/
build/
!**/src/main/**/build/
!**/src/test/**/build/

### VS Code ###
.vscode/

### Mac OS ###
.DS_Store
*._*

### Log Files ###
*.trace.db
*.log

*.db.mv.db.mv.db
EOL

# Completion message
echo "README.md and .gitignore files have been created successfully!"