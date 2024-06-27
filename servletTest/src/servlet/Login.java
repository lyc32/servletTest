package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/login")
public class Login extends HttpServlet
{
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        List<User> result = AddUser.userList.stream().filter(e->

            e.getEmail().equals( req.getParameter("email")) && e.getPassword().equals(req.getParameter("password"))
        ).collect(Collectors.toList());

        if(result.size() == 1)
        {

            Cookie username = new Cookie("username", result.get(0).getUsername());
            username.setMaxAge(5*60); //save in 5 min
            resp.addCookie(username);
            resp.sendRedirect(req.getContextPath() + "/cookie.jsp");
        }
        else
        {
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }
}
