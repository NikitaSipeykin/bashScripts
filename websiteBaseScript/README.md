# WebBS.sh Website Base Script
## To use this script on macOS and have it called from any directory with a project structure in the current working folder, follow these steps:

<<<<<<< HEAD
### 1. **Use the script from any directory**:
- You can now invoke the script from any directory by simply typing:
  ```bash
  WebBS.sh <Your_project_name>
  ```
    - As a result, a folder** with the structure of the website will be created in the **selected folder.
  #### or
  ```bash
  WebBS.sh 
  ```
    - As a result, a folder** with the structure of the website will be created in the **selected folder.
=======
### 1. **Используйте скрипт из любой директории**:
   - Теперь вы можете вызвать скрипт из любой папки, просто введя:
     ```bash
     WebBS.sh <Your_project_name>
     ```
     - Как результат в выбраной папке создасться папка со структурой вэб-сайта.
     или
       ```bash
     WebBS.sh 
     ```
     - Как результат в выбраной папке создасться структура вэб-сайта.
>>>>>>> gitScriptBase

### After performing these steps, the script will create a website structure with folders and files, namely:
- The main folder where the project will be placed and the repository will be created;
- File **README.md**;
- The **.gitignore** file already in the ready form;
- Folders for **css** styles, **images** images, **fonts** fonts;
- Style files **style.css**, style cleanup **reset.css**, font addition **fonts.css**;
- The javascript file **app.js**;
- An **index.html** file with the basic structure and the rest of the files bolted on;
  This approach will make the script globally accessible and ensure that the project structure is created in the current directory from which you run it.

### Here the folder three:
```bash
Current folder/
├── index.html/
├── css/
│   ├── style.css/
│   ├── reset.css/
│   ├── fonts.css/
├── js/
│   ├── app.js/
├── fonts/
├── images/
├── .gitignore/
├── README.md/
```