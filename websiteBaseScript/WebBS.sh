#!/bin/bash

# Check if a repository name was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <repository-name>"
  exit 1
fi

# Create a new directory with the given repository name
mkdir "$1" && cd "$1"

# Initialize a new Git repository in the current directory
git init

# Create basic subdirectories
mkdir css js images fonts

# Create HTML file
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/fonts.css">
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style.css">
  <title>F&B</title>
</head>
<body id="body">
  <div class="wrapper">
    <div class="header"></div>
    <div class="main"></div>
    <div class="footer"></div>
  </div>
</body>
<script src="js/app.js"></script>
</html>
EOL

# Create CSS file
cat <<EOL > css/style.css
/*= GLOBAL =========================================================================================*/
/*- GLOBAL -----------------------------------------------------------------------------------------*/
/*- GLOBAL -----------------------------------------------------------------------------------------*/

html, body {
  font-family: Lato, sans-serif;
  color: #424551;
  line-height: 160%;
}

.wrapper {
  min-height: 100%;
  width: 100%;
  overflow: hidden;
}

.container {
  max-width: 1260px;
  padding: 0 15px;
  margin: 0 auto;
  height: 100%;
}
EOL

# Create reset CSS file
cat <<EOL > css/reset.css
*{padding: 0;margin: 0;border: 0;}
*,*:before,*:after{-moz-box-sizing: border-box;-webkit-box-sizing: border-box;box-sizing: border-box;}
:focus,:active{outline: none;}
a:focus,a:active{outline: none;}
nav,footer,header,aside{display: block;}
html,body{
  height:100%;width:100%;
  font-size:100%;line-height:1;-ms-text-size-adjust:100%;-moz-text-size-adjust:100%;-webkit-text-size-adjust:100%;}
input,button,textarea{font-family:inherit;}
input::-ms-clear{display: none;}
button{cursor: pointer;}
button::-moz-focus-inner{padding:0;border:0;}
a,a:visited{text-decoration: none;}
a:hover{text-decoration: none;}
ul li{list-style: none;}
img{vertical-align: top;}
h1,h2,h3,h4,h5,h6{font-size:inherit;font-weight: inherit;}
a{color:inherit;}
EOL

# Create JavaScript file
cat <<EOL > css/fonts.css
@font-face {
  font-family: "Cormorant";
  font-weight: 700;
  font-style: normal;
  font-display: swap;
  src:
    local("Cormorant"),
    url("../fonts/Cormorant/Cormorant-VariableFont_wght.woff2") format("woff2"),
    url("../fonts/Cormorant/Cormorant-VariableFont_wght.woff") format("woff"),
    url("../fonts/Cormorant/Cormorant-VariableFont_wght.eot") format("eot");
}
EOL

# Create JavaScript file
cat <<EOL > js/app.js
// Basic JavaScript functionality
console.log('Welcome to My Website!');
EOL

# Completion message
echo "Website structure created successfully!"

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

# Stage the files and make the initial commit
git add .
git commit -m "The foundation of the lending site has been created"

# Completion message
echo "Repository initialized successfully in the current directory with an initial commit!"