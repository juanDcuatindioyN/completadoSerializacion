<%-- 
    Document   : index
    Created on : 30/08/2023, 12:35:13 a. m.
    Author     : juan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Rockola</title>
 <style>
        body {
            background-color: #222;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            padding: 20px;
            background-color: #333;
            color: #ff4500;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #444;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ff4500;
            border-radius: 5px;
            background-color: #555;
            color: #fff;
        }

        input[type="submit"] {
            background-color: #ff4500;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #ff5722;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #ff4500;
        }

        a:hover {
            color: #ff5722;
        }
    </style>
</head>
<body>
  <h1>Sistema Reproductor de videos</h1>
  <ul>
    <li><a href="agregarVideo.jsp" class="btn">Ingresar nuevo video</a></li>
    <li><a href="listarVideos.jsp" class="btn">Listado de videos</a></li>
  </ul>
  
</body>
</html>