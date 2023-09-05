package servlets;

import com.umariana.mundo.Video;
import java.io.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {
    ArrayList<Video> misVideos = new ArrayList<>();

    // Método init() se llama al iniciar el servlet
    @Override
    public void init() throws ServletException {
        super.init();

        ServletContext servletContext = getServletContext();

        // Cargar videos desde archivo al iniciar el servlet
        cargarVideosDesdeArchivo(servletContext);
    }

    // Método doPost() se llama al enviar datos al servlet a través de un formulario POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener los parámetros del formulario
        String idVideo = request.getParameter("idVideo");
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        String url = request.getParameter("url");
        String categoria = request.getParameter("categoria");
        String letra = request.getParameter("letra");

        try {
            int idVideoInt = Integer.parseInt(idVideo);

            // Crear un objeto Video y agregarlo a la lista misVideos
            Video miVideo = new Video(idVideoInt, titulo, autor, anio, categoria, url, letra);
            misVideos.add(miVideo);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            System.out.println("Error al convertir idVideo a entero: " + e.getMessage());
        }

        // Guardar los videos en un archivo
        guardarVideosEnArchivo();

        // Establecer la lista de misVideos como un atributo de la solicitud
        request.setAttribute("misVideos", misVideos);

        // Redirigir a la página listarVideos.jsp
        request.getRequestDispatcher("listarVideos.jsp").forward(request, response);
    }

    // Método para guardar la lista de videos en un archivo
    private void guardarVideosEnArchivo() {
        try {
            // Obtener la ruta real del directorio "data" en el contexto del servlet
            String dataPath = getServletContext().getRealPath("/data");

            // Crear la carpeta "data" si no existe
            File dataFolder = new File(dataPath);
            if (!dataFolder.exists()) {
                dataFolder.mkdirs();
            }

            // Crear el archivo de datos de videos
            String filePath = dataPath + File.separator + "videos.ser";
            FileOutputStream fos = new FileOutputStream(filePath);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(misVideos);
            oos.close();
            System.out.println("Datos de videos guardados exitosamente en: " + filePath);
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error al guardar los datos de videos: " + e.getMessage());
        }
    }

    // Método para cargar la lista de videos desde un archivo
    public void cargarVideosDesdeArchivo(ServletContext servletContext) {
        try {
            // Obtener la ruta real del archivo de datos de videos
            String dataPath = servletContext.getRealPath("/data/videos.ser");

            // Verificar si el archivo existe
            File archivo = new File(dataPath);
            if (archivo.exists()) {
                FileInputStream fis = new FileInputStream(dataPath);
                ObjectInputStream ois = new ObjectInputStream(fis);

                // Leer la lista de videos desde el archivo
                misVideos = (ArrayList<Video>) ois.readObject();
                ois.close();
                System.out.println("Datos de videos cargados exitosamente desde: " + dataPath);
            }
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Error al cargar los datos de videos: " + e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}


    