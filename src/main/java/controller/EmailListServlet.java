package controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String email     = request.getParameter("email");
        String dob       = request.getParameter("dob");
        String heardFrom = request.getParameter("heardFrom");
        String contactVia= request.getParameter("contactVia");

        String wantsUpdates = request.getParameter("wantsUpdates");
        String wantsEmails  = request.getParameter("wantsEmails");

        // Validate dữ liệu (3 field bắt buộc)
        String message = "";
        if (firstName == null || firstName.isEmpty()
                || lastName == null || lastName.isEmpty()
                || email == null || email.isEmpty()) {
            message = "All three fields are required.";
        }

        String url;
        if (!message.isEmpty()) {
            url = "survey.jsp";  // trả về lại form
            request.setAttribute("message", message);
        } else {
            url = "thanks.jsp";  // sang trang cảm ơn
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("email", email);
            request.setAttribute("dob", dob);
            request.setAttribute("heardFrom", heardFrom);
            request.setAttribute("contactVia", contactVia);
            request.setAttribute("wantsUpdates", (wantsUpdates != null ? "Yes" : "No"));
            request.setAttribute("wantsEmails", (wantsEmails != null ? "Yes" : "No"));
        }

        // Forward đến trang tương ứng
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
