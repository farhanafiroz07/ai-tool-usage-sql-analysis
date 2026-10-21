USE ai_analysis;
SELECT * FROM students;
SELECT Student_Name,College_Name,Stream,Year_of_Study,AI_Tools_Used ,Daily_Usage_Hours FROM students LIMIT 10; 
 SELECT DISTINCT AI_Tools_Used FROM students; 
 SELECT MAX(Daily_Usage_Hours) AS highest_daily_usage_hours FROM students; 
 SELECT Year_of_Study, COUNT(*) AS total_students FROM students GROUP BY Year_of_Study ORDER BY Year_of_Study;      
 SELECT Student_Name,AI_Tools_Used,Daily_Usage_Hours FROM students ORDER BY Daily_Usage_Hours ASC LIMIT 5; 
 SELECT DISTINCT State FROM students ORDER BY State; 
 SELECT AI_Tools_Used, COUNT(*) AS students_willing_to_pay FROM students WHERE Willing_to_Pay_for_Access='Yes'  GROUP BY AI_Tools_Used ORDER BY students_willing_to_pay DESC; 
 SELECT Stream,ROUND(AVG(Daily_Usage_Hours), 2) AS average_daily_usage FROM students GROUP BY Stream ORDER BY average_daily_usage DESC; 
 SELECT Student_Name, AI_Tools_Used,Daily_Usage_Hours FROM students WHERE AI_Tools_Used="ChatGPT" AND Daily_Usage_Hours < 1; 
 SELECT Student_Name,AI_Tools_Used,Daily_Usage_Hours,Internet_Access FROM students WHERE Internet_Access = 'Poor'; 
 SELECT Student_Name,Awareness_Level,AI_Tools_Used,Daily_Usage_Hours FROM students WHERE Awareness_Level >= 4 AND Daily_Usage_Hours < 1; 
SELECT College_Name,COUNT(*) AS students_willing_to_pay FROM students WHERE Willing_to_Pay_for_Access = 'Yes' GROUP BY College_Name ORDER BY students_willing_to_pay DESC LIMIT 5; 
SELECT Student_Name,AI_Tools_Used,Daily_Usage_Hours FROM students WHERE Daily_Usage_Hours BETWEEN 1 AND 2 ORDER BY Daily_Usage_Hours; 
SELECT College_Name,ROUND(AVG(Impact_on_Grades), 2) AS average_grade_impact FROM students GROUP BY College_Name ORDER BY average_grade_impact DESC; 
SELECT DISTINCT Device_Used FROM students; 


