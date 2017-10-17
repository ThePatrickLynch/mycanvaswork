d:
cd \xampp\mysql\bin
mysqldump -u root -p --no-data --add-drop-table canvas_data > schema.sql
copy schema.sql d:\Data\github\mycanvaswork\schema.sql

