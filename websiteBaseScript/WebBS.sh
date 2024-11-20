#!/bin/bash

create_structure() {
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
  <title>WebBS</title>
</head>
<body id="body">
  <div class="wrapper">
    <header class="header">
      <div class="header_top">
        <div class="container">
          <div class="header_top-inner">header_top</div>
        </div>
      </div>
      <div class="header_body">
        <div class="container">
          <div class="header_body-inner">header_body</div>
        </div>
      </div>
    </header>
    <main class="main">
      <section class="main_about" id="about">
        <div class="container">
          <div class="about-inner">main_about</div>
        </div>
      </section>
    </main>
    <footer class="footer">
      <div class="footer_top">
        <div class="container">
          <div class="footer_top-inner">footer_top</div>
        </div>
      </div>
      <div class="footer_bottom">
        <div class="container">
          <div class="footer_bottom-inner">footer_bottom</div>
        </div>
      </div>
    </footer>
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

.main_about {
  padding: 180px 0 160px;
}



/*= HEADER ======================================================================================*/
/*= HEADER ======================================================================================*/
/*= HEADER ======================================================================================*/




.header {
  font-weight: 700;
  background:
    linear-gradient(55.95deg,
      rgba(255, 63, 58, 0.2) 0%,
      rgba(247, 94, 5, 0.2) 100%);
  height: 100vh;
  display: flex;
  flex-direction: column;
}



/*- HEADER-TOP ----------------------------------------------------------------------------------*/
/*- HEADER-TOP ----------------------------------------------------------------------------------*/
/*- HEADER-TOP ----------------------------------------------------------------------------------*/





.header_top-inner {
  padding: 20px 0px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}


/*- HEADER-BODY ---------------------------------------------------------------------------------*/
/*- HEADER-BODY ---------------------------------------------------------------------------------*/

.header_body {
  flex-grow: 1;
}

.header_body-inner {
  display: flex;
  flex-direction: column;
  height: 100%;
}


/*= FOOTER ======================================================================================*/
/*- FOOTER --------------------------------------------------------------------------------------*/
/*- FOOTER --------------------------------------------------------------------------------------*/



.footer {
  color: #fff;
}


/*= FOOTER TOP ======================================================================================*/
/*- FOOTER TOP --------------------------------------------------------------------------------------*/
/*- FOOTER TOP --------------------------------------------------------------------------------------*/



.footer_top {
  background-color: var(--gray-900, #1E212C);
  padding: 80px 0 60px;
}

.footer_top-inner {
  display: flex;
  justify-content: space-between;
  margin: 0 -15px;
  width: 100%;
}


/*= FOOTER BOTTOM ======================================================================================*/
/*- FOOTER BOTTOM --------------------------------------------------------------------------------------*/
/*- FOOTER BOTTOM --------------------------------------------------------------------------------------*/




.footer_bottom {
  background-color: #292C37;
}

.footer_bottom-inner {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px 0;
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
$(function () {
// Basic JavaScript functionality
console.log('Welcome to My Website!');
})
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
}

# Function for requesting confirmation
confirm() {
  while true; do
    read -rp "Are you sure you want to create the structure for '$1'? (y/n): " answer
    case $answer in
      [Yy]* ) return 0;; # Пользователь подтвердил
      [Nn]* ) echo "Action canceled."; exit 0;; # Пользователь отменил
      * ) echo "Please answer 'y' (yes) or 'n' (no).";; # Неверный ввод
    esac
  done
}

# Checking if an argument has been entered
if [ -z "$1" ]; then
  # If no name is specified, we use the name of the current directory
  current_dir_name=$(basename "$PWD")
  confirm "$current_dir_name"
  create_structure "$current_dir_name"
else
  # If a name is specified, create a new directory with that name
  confirm "$1"
  mkdir -p "$1" && cd "$1"
  create_structure "$1"
fi