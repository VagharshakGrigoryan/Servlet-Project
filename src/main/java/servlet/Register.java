package servlet;

import manager.UserManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class Register extends HttpServlet {
    UserManager userManager = new UserManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");

        User user = User.builder()
                .name(name)
                .surname(surname)
                .email(email)
                .password(password)
                .gender(gender)
                .build();
        userManager.addUser(user);

        req.setAttribute("msg", " Yo have registered successfully !!! you can login now");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
