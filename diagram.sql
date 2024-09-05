+----------------+
|   students     |
+----------------+
| student_id (PK)|
| year           |
| section        |
| name           |
+----------------+

     |
     | 1
     |
     |
     | n
+----------------+
|   grades       |
+----------------+
| grade_id (PK)  |
| student_id (FK)|
| grade          |
+----------------+
