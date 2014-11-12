package servlet.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    private final int FILE_EXTENSION_LENGTH = 4;

    /* (non-Javadoc)
     * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /* (non-Javadoc)
     * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        boolean loggedIn;
        String username;

        if (session.getAttribute("username") == null) {
            username = request.getParameter("username");

        } else {
            username = (String) session.getAttribute("username");
        }

        if (username != null) {
            loggedIn = true;
        } else {
            loggedIn = false;
        }
        synchronized (session) {
            session.setAttribute("username", username);
            session.setAttribute("loginStatus", loggedIn);
        }

        response.sendRedirect("index");
    }
}
