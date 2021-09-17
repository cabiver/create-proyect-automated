@echo off
if [%1]==[] ( 
set NOMBRE=new-project
) else ( 
set NOMBRE=%1
)

mkdir %NOMBRE%
cd %NOMBRE%

touch package.json
touch .gitignore

echo { > package.json
echo   "name": "new-project", >> package.json
echo   "version": "0.0.0", >> package.json
echo   "scripts": { >> package.json
echo     "dev": "vite", >> package.json
echo     "build": "vite build", >> package.json
echo     "serve": "vite preview" >> package.json
echo   }, >> package.json
echo   "devDependencies": { >> package.json
echo     "vite": "^2.5.4" >> package.json
echo   } >> package.json
echo } >> package.json

echo node_module/ > .gitignore
echo dist/ >> .gitignore

mkdir public
mkdir src
touch src/index.js
touch src/index.css
touch src/index.html


echo ^<!DOCTYPE^> > index.html
echo ^<html lang="es"^> >> index.html
echo ^<head^> >> index.html
echo   ^<meta charset="UTF-8"^> >> index.html
echo   ^<meta http-equiv="X-UA-Compatible" content="IE=edge"^> >> index.html
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> index.html
echo   ^<title^>Document^</title^> >> index.html
echo   ^<link rel="stylesheet" href="./src/index.css"^> >> index.html
echo   ^<script type="module" src="./srsc/index.js"^>^</script^> >> index.html
echo ^</head^> >> index.html
echo ^<body^> >> index.html
echo.  >> index.html
echo ^</body^> >> index.html
echo ^</html^> >> index.html

echo.
echo happy hacking
echo.

npm i
