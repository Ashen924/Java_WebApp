package AddMovie;


import java.io.*;



import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import MovieDAO.Movie;
import MovieDAO.MovieDAO;

@WebServlet("/Add")
public class AddMovieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        Movie movie = new Movie(title, description, image);
        MovieDAO movieDAO = new MovieDAO();
        movieDAO.addMovie(movie);

        response.sendRedirect("admin.jsp");
    }
}
