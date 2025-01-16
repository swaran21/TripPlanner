package com.sai.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter("/*")
public class SessionFilter implements Filter {
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
        String uri = request.getRequestURI();

        if (uri.endsWith("index.jsp") || uri.endsWith("login.jsp") || uri.endsWith("login") || uri.endsWith("register.jsp") || uri.endsWith("logout")) {
            chain.doFilter(req, res);
            return;
        }

        if (session == null || session.getAttribute("userId") == null) 
        {
            response.sendRedirect("login.jsp");
        } else {
            chain.doFilter(req, res);
        }
    }
}