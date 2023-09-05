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
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: rgba(0, 0, 0, 0.7);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      text-align: center;
    }

    h1 {
      font-size: 36px;
      margin: 10px 0;
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
      font-size: 18px;
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
      font-size: 16px;
    }

    input[type="submit"] {
      background-color: #ff4500;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      font-size: 18px;
    }

    input[type="submit"]:hover {
      background-color: #ff5722;
    }

    a {
      display: block;
      margin-top: 20px;
      text-decoration: none;
      color: #ff4500;
      font-size: 18px;
    }

    a:hover {
      color: #ff5722;
    }
  </style>
</head>
<body>
  <h1>Sistema Reproductor de videos</h1>
  <form action="SvVideo" method="POST">
    <label for="idVideo">idVideo:</label>
    <input type="text" name="idVideo">
    <br>
    <label for="titulo">Titulo:</label>
    <input type="text" name="titulo">
    <br>
    <label for="autor">Autor:</label>
    <input type="text" name="autor">
    <br>
    <label for="anio">Año:</label>
    <input type="text" name="anio">
    <br>
    <label for="url">Url:</label>
    <input type="text" name="url">
    <br>
    <label for="categoria">Categoria:</label>
    <input type="text" name="categoria">
    <br>
    <label for="letra">Letra:</label>
    <textarea id="id" name="letra" rows="5" cols="10"></textarea>
    <br>
    <input type="submit" value="Agregar video">
  </form>
  <a href="index.jsp">Volver al menu</a>
</body>
</html>
