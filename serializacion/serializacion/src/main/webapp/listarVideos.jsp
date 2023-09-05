<%@page import="java.io.IOException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listar videos</h1>
        <a href="index.jsp">Volver al inicio</a>
       <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h1 {
            background-color: #333;
            color: #FF4500;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
        }

        .video-container {
            margin-top: 20px;
            width: 80%;
            max-width: 800px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            padding: 20px;
        }

        .video-item {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .video-item h2 {
            font-size: 1.2rem;
            color: #333;
        }

        .video-item p {
            margin: 5px 0;
            color: #666;
        }

        a {
            text-decoration: none;
            color: #FF4500;
        }

        a:hover {
            color: #FF5722;
        }
    </style>
       
        <%   
            ArrayList<Video> misVideos = null;
            
            String dataPath = application.getRealPath("/data/videos.ser");
            
            
            File archivo = new File(dataPath);
            if (archivo.exists()) {
                FileInputStream fis = new FileInputStream(dataPath);
                ObjectInputStream ois = new ObjectInputStream(fis);
                misVideos  = (ArrayList<Video>) ois.readObject();
                ois.close();
                System.out.println("Datos de videos cargados exitosamente desde: " + dataPath);
            }
            
           
             if (misVideos != null) {
                System.out.println("Se cargaron " + misVideos.size() + " videos exitosamente.");
                for (Video v : misVideos) {
                    out.print("IdVideo:" + v.getIdVideo() + "<br>");
                    out.print("Titulo:" + v.getTitulo() + "<br>");
                    out.print("Autor;" + v.getAutor() + "<br>");
                    out.print("Anio:" + v.getAnio() + "<br>");
                    out.print("Categoria:" + v.getCategoria() + "<br>");
                    out.print("Url" + v.getUrl() + "<br>");
                    out.print("Letra:" + v.getLetra() + "<br>");
                    out.print("------------------------------------------------------------"+"<br>");
                }
            } else {
                out.print("No hay videos disponibles.");
            }
        %>
    </body>
</html>