@echo off

mkdir %1
cd %1


touch pacakage.json
touch .gitignore

echo { >> pacakage.json
echo   "scripts": { >> pacakage.json
echo     "build": "rm -rf dist && vite build", >> pacakage.json
echo     "deploy": "gh-pages -d dist" >> pacakage.json
echo   }, >> pacakage.json
echo   "keywords": [], >> pacakage.json
echo   "license": "ISC" >> pacakage.json
echo } >> pacakage.json

echo node_module/ > .gitignore
echo dist/ >> .gitignore

mkdir public
mkdir src
touch src/index.js
touch src/index.css
touch src/index.html

echo ^<!DOCTYPE^> >> src/index.html
echo ^<html lang="es"^> >> src/index.html
echo ^<head^> >> src/index.html
echo   ^<meta charset="UTF-8"^> >> src/index.html
echo   ^<meta http-equiv="X-UA-Compatible" content="IE=edge"^> >> src/index.html
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> src/index.html
echo   ^<title^>Document^</title^> >> src/index.html
echo   ^<link rel="stylesheet" href="./index.css"^> >> src/index.html
echo   ^<script type="module" src="./index.js"^>^</script^> >> src/index.html
echo ^</head^> >> src/index.html
echo ^<body^> >> src/index.html
echo.  >> src/index.html
echo ^</body^> >> src/index.html
echo ^</html^> >> src/index.html


cd ..
echo.
echo happy hacking
echo.


