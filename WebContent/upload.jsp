<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Exam</title>
</head>
<body>
<h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "uploadServlet" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "photo" size = "50" />
         <br />
         <br>
         <input type = "submit" value = "Upload File" />
      </form>
</body>
</html>