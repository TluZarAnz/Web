package ru.itmo.angry_beavers.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Double.parseDouble(req.getParameter("x-value"));
            Double.parseDouble(req.getParameter("y-value"));
            double r = Double.parseDouble(req.getParameter("r-value"));

                getServletContext().getRequestDispatcher("/check_area").forward(req, resp);

        } catch (NumberFormatException | NullPointerException e) {
            getServletContext().getRequestDispatcher("/error.jsp").forward(req, resp);
        }
    }

}
