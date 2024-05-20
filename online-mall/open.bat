
start cmd /k"cd C:\Users\Administrator\Desktop\online-mall&&npm install&&npm run dev"

timeout /t 16 /nobreak >NUL

for /f "tokens=3,4" %%a in ('"reg query HKEY_CLASSES_ROOT\http\shell\open\command"') do (set SoftWareRoot=%%a %%b)

start "" % SoftWareRoot % "http://localhost:8888/"