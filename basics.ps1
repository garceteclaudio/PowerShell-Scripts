$DocumentsPath = $env:userprofile +"\Documents\"
$EnviormentDocumentsPath = "EnviormentDocumentsPath : " + $DocumentsPath
Write-Output  $EnviormentDocumentsPath

#VERSION POWERSHELL
$PSVersionTable

#Crear una carpeta
New-Item -Path 'Desktop\testeador' -ItemType Directory
#Crear un archivo .txt
New-Item -Path 'Desktop\testeador\TestFile.txt' -ItemType File
#Eliminar recursivamente lo que esta en la carpeta
Remove-Item 'Desktop\testeador' -Recurse

#Obtener fecha y mostrar
$dateInfo = Get-Date
Write-Output  "Actual date information : $dateInfo"

#Mostrar una lista
$list = "one","two","two","three","four","five"
Write-Output $list

#Ejecutar jar, hay que pararse donde se encuentra el jar
Start-Process java -workingdirectory "C:\Users\claudio.garcete\Desktop\PowerShell" -ArgumentList '-jar', 'getDollar.jar' `
-RedirectStandardOutput '.\console.out.txt'
