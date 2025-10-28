# ETutor — PHP E‑Learning System

Small legacy PHP/MySQL e‑learning web app (WAMP/LAMP) for managing courses, subjects, teachers, students, file uploads and exams.

## Contents (select files)
- [etutor.sql](etutor.sql) — database schema and seed data
- [dbConnector.php](dbConnector.php) — DB wrapper class (`DbConnector`)
  - [`DbConnector::query`](dbConnector.php)  
  - [`DbConnector::fetchArray`](dbConnector.php)
- [opener_db.php](opener_db.php) — instantiates the [`DbConnector`](dbConnector.php)
- [upload.php](upload.php) — teacher file upload form + processing
- [upload_save.php](upload_save.php) — alternate upload handler
- [upload.php](upload.php) and [upload_save.php](upload_save.php) use the uploads/ directory
- Admin pages:
  - [admin/course.php](admin/course.php)
  - [admin/class.php](admin/class.php)
  - [admin/teacher.php](admin/teacher.php)
  - [admin/user.php](admin/user.php)
  - [admin/add_teacher.php](admin/add_teacher.php)
  - [admin/add_course.php](admin/add_course.php)
  - [admin/add_subject.php](admin/add_subject.php)
  - [admin/add_student_class.php](admin/add_student_class.php)
  - [admin/add_student_subject.php](admin/add_student_subject.php)
  - [admin/edit_course.php](admin/edit_course.php)
- Student / teacher flows:
  - [student_home.php](student_home.php)
  - [teacher_home.php](teacher_home.php)
  - [teacher_subject.php](teacher_subject.php)
  - [students.php](students.php)
- Exam & questions:
  - [AddQns.php](AddQns.php)
  - [ViewQuestions.php](ViewQuestions.php)
  - [question_paper.php](question_paper.php)
  - [Result.php](Result.php)

## Requirements
- PHP 5.x (project uses deprecated mysql_* functions)
- MySQL (import [etutor.sql](etutor.sql))
- Apache (WAMP/XAMPP recommended for local dev)
- Writable uploads/ directory for file uploads

## Quick setup (local)
1. Install WAMP/XAMPP with PHP 5.x and MySQL.
2. Place project in your web root (e.g. C:\wamp\www\ETutor).
3. Import the DB:
   - Use phpMyAdmin or CLI to import [etutor.sql](etutor.sql).
4. Verify DB credentials in [dbConnector.php](dbConnector.php) (host, user, pass, db).
5. Ensure uploads/ is writable by the web server.
6. Open the site in browser and use admin pages under `admin/` to manage data.

## Important implementation notes & pointers
- The project uses a simple DB wrapper [`DbConnector`](dbConnector.php). See [opener_db.php](opener_db.php) for usage (it creates `$connector`).
- Many pages use deprecated PHP mysql_* API (e.g., [admin/course.php](admin/course.php), [admin/class.php](admin/class.php), [add_student.php](add_student.php)). Migrate to mysqli or PDO for production.
- Passwords are stored/handled in plaintext in multiple places (e.g., [admin/add_user.php](admin/add_user.php), [admin/add_teacher.php](admin/add_teacher.php), [add_student.php](add_student.php)). Replace with password_hash / password_verify.
- File upload handlers ([upload.php](upload.php), [upload_save.php](upload_save.php)) perform size/type checks but rely on client inputs; revalidate server‑side and sanitize filenames.

## Common workflows
- Add courses / subjects / departments via `admin/` pages (see [admin/add_course.php](admin/add_course.php), [admin/add_subject.php](admin/add_subject.php)).
- Register students with [add_student.php](add_student.php).
- Teachers upload files via [upload.php](upload.php) (subject id passed in query).
- Exams: declare exam ([admin/declare_exam.php](admin/declare_exam.php)), add questions ([AddQns.php](AddQns.php)), students take exams ([ViewQuestions.php](ViewQuestions.php), [question_paper.php](question_paper.php)) and see results ([Result.php](Result.php)).

## Security & migration recommendations
- Replace mysql_* calls with PDO or mysqli and prepared statements.
- Hash passwords with password_hash.
- Implement CSRF protection on forms.
- Sanitize and validate all file uploads; store files outside web root or use safe generated filenames.
- Remove echoing raw DB values into HTML without escaping to prevent XSS.

## Troubleshooting
- DB connection issues: check [dbConnector.php](dbConnector.php) and [opener_db.php](opener_db.php).
- File upload errors: confirm uploads/ permissions and PHP upload_max_filesize.
- If import fails, inspect [etutor.sql](etutor.sql) for required MySQL version compatibility.

## License & notes
- This is legacy source code intended for maintenance or local testing. Review and modernize before production use.

If you want, I can:
- add a simple migration plan to PDO,
- create a minimal .env config loader and update [dbConnector.php](dbConnector.php),
- or generate a checklist for hardening uploads.