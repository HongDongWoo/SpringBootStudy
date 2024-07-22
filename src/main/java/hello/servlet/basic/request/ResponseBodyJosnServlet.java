package hello.servlet.basic.request;

import com.fasterxml.jackson.databind.ObjectMapper;
import hello.servlet.basic.HelloData;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="responseBodyJosnServlet", urlPatterns = "/response-body-json")
public class ResponseBodyJosnServlet extends HttpServlet {

    private ObjectMapper objectMapper = new ObjectMapper();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HelloData helloData = new HelloData();
        helloData.setUsername("씨발");
        helloData.setAge(30);
        helloData.setJob("창놈");

        String returnData = objectMapper.writeValueAsString(helloData);

        Cookie cookie = new Cookie("test", "test");

        cookie.setMaxAge(600);

        response.addCookie(cookie);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        response.getWriter().println(returnData);

    }
}
