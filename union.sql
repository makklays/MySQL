# ОБЪЕДИНЕНИЕ 

# C удалением дублей 
SELECT * FROM имя_таблицы1 WHERE условие
UNION 
SELECT * FROM имя_таблицы2 WHERE условие; 
  
# Без удаления дублей
SELECT * FROM имя_таблицы1 WHERE условие
UNION ALL 
SELECT * FROM имя_таблицы2 WHERE условие; 

# Можно объединять две таблицы и больше 
SELECT * FROM имя_таблицы1 WHERE условие
UNION 
SELECT * FROM имя_таблицы1 WHERE условие
UNION 
SELECT * FROM имя_таблицы1 WHERE условие
UNION 
SELECT * FROM имя_таблицы1 WHERE условие; 
