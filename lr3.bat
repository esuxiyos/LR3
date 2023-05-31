@echo off
chcp 65001
cls
echo:1. Створення каталогу & >nul timeout /t 1 /nobreak
echo.
mkdir "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Прихована папка"
mkdir "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Не прихована папка"
echo:2. Приховування папки "Прихована папка" & >nul timeout /t 1 /nobreak
echo.
echo:3. Виведення каталогу & >nul timeout /t 1 /nobreak
echo.
tree /a /f
echo:4. Запис результату виконання команди до файлу copyhelp.txt & >nul timeout /t 1 /nobreak
echo.
attrib +h "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Прихована папка"
xcopy /? > "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Не прихована папка/copyhelp.txt"
echo:5. Копіювання файлу copyhelp.txt з перейменуванням на copied_copyhelp.txt & >nul timeout /t 1 /nobreak
echo.

echo f | xcopy "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група\Іванов Тимофій\Командна стрічка\Прихована папка"\copied_copyhelp.txt
echo:6. Створення вітки batch у папці Іванов Тимофій & >nul timeout /t 1 /nobreak
echo.
mkdir "Лабораторні\Група\Іванов Тимофій\batch\Прихована папка"
mkdir "Лабораторні\Група\Іванов Тимофій\batch\Не прихована папка"
echo:7. Виведення каталогу & >nul timeout /t 1 /nobreak
echo.
tree /a /f
echo:8. Приховування папки "Прихована папка" & >nul timeout /t 1 /nobreak
echo.
attrib +h "Лабораторні\Група\Іванов Тимофій\batch\Прихована папка"
echo:9. Копіювання файлу copyhelp.txt з перейменуванням на copied_copyhelp.txt & >nul timeout /t 1 /nobreak
echo.
xcopy /? > "Лабораторні\Група\Іванов Тимофій\batch\Не прихована папка/copyhelp.txt"
echo f | xcopy "Лабораторні\Група\Іванов Тимофій\batch\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група\Іванов Тимофій\batch\Прихована папка"\copied_copyhelp.txt

echo:10. Інд. завдання, варіант 11 - Виведення змісту каталогу та обсягу файлів
set /p folder="Введіть шлях до каталогу, який необхідно перевірити: "
if not exist "%folder%" (
    echo Каталогу "%folder%" не існує.
	echo:10. Натисніть будь-яку клавішу для перегляду звіту
	pause
	start "" "ЛР 3 Іванов.docx"
    exit /b 1
)
echo Вміст каталогу %folder%:
dir /s /b "%folder%"
echo.
echo Обсяг файлів у каталозі %folder%:
set "totalSize=0"
for /r "%folder%" %%F in (*) do (
    set /a "totalSize+=%%~zF"
)
echo %totalSize% байт
echo:11. Натисніть будь-яку клавішу для перегляду звіту & >nul timeout /t 1 /nobreak
pause
start /high /wait "" "ЛР 3 Іванов.docx"
echo:12. Відкрито файл зі звітом (ЛР 3 Іванов.docx)& >nul timeout /t 1 /nobreak

pause
exit /b 0