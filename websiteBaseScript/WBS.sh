#!/bin/bash

# Create main project folder
mkdir my_website && cd my_website

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
<script src="app.js"></script>
</html>
EOL

# Create CSS file
cat <<EOL > css/styles.css
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

# Create JavaScript file
cat <<EOL > js/app.js
// Basic JavaScript functionality
console.log('Welcome to My Website!');
EOL

# Completion message
echo "Website structure created successfully!"