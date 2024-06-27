package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

import model.User;

@WebServlet("/addUser")
public class AddUser extends HttpServlet
{
    public static ArrayList<User> userList = new ArrayList<>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        User user = new User(req.getParameter("username"), req.getParameter("email"), req.getParameter("password"));
        System.out.println(user.getUsername() + " " + user.getEmail());
        this.userList.add(user);
        resp.sendRedirect(req.getContextPath() + "/listUser.jsp");
    }
}
