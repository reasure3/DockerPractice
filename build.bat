@echo off

call build_node.bat
echo:

call build_nginx.bat
echo:

call build_db.bat
echo:

echo All Done!!!

pause