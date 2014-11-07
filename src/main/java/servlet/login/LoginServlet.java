package servlet.login;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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

        String username;
        if (session.getAttribute("username") == null) {
            username = request.getParameter("username");
        } else {
            username = (String) session.getAttribute("username");
        }

        java.util.Map<String, String> map = new java.util.HashMap<String, String>();

        ServletContext context = request.getServletContext();
        String path = context.getRealPath("/storage");
        File strorageDirectory = new File(path);

        String filename = "";
        String filepath = "";
        for (File f : strorageDirectory.listFiles()) {
            filepath = getServletContext().getContextPath() + "/storage/" + f.getName();
            filename = f.getName().substring(0, f.getName().length() - FILE_EXTENSION_LENGTH);
            map.put(filename, filepath);
        }

        filename = null;
        filepath = null;

        synchronized (session) {
            session.setAttribute("username", username);
            session.setAttribute("map", map);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/logged-in.jsp");
        dispatcher.forward(request, response);
    }
}
