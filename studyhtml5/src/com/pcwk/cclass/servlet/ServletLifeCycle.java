package com.pcwk.cclass.servlet;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
/**
 * Servlet implementation class ServletLifeCycle
 */
@WebServlet(description = "라이프 사이클", urlPatterns = { "/ServletLifeCycle", "/pcwk/life.do" })
public class ServletLifeCycle extends HttpServlet {
        private static final long serialVersionUID = 1L;
        private Logger LOG = Logger.getLogger(this.getClass());
        /**
         * @see HttpServlet#HttpServlet()
         */
        public ServletLifeCycle() {
                super();
                LOG.debug("========================");
                LOG.debug("=1 ServletLifeCycle()=");
                LOG.debug("========================");
        }
        /**
         * @see Servlet#init(ServletConfig)
         */
        public void init(ServletConfig config) throws ServletException {
                LOG.debug("========================");
                LOG.debug("=2 init()=");
                LOG.debug("========================");
        }
        /**
         * @see Servlet#destroy()
         */
        public void destroy() {
                LOG.debug("========================");
                LOG.debug("=5 destroy()=");
                LOG.debug("========================");
        }
        /**
         * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
         *      response)
         */
        protected void service(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                LOG.debug("========================");
                LOG.debug("=3 service()=");
                LOG.debug("========================");
                super.service(request, response);
        }
        /**
         * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
         *      response)
         */
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                LOG.debug("========================");
                LOG.debug("=4 doGet()=");
                LOG.debug("========================");
                response.getWriter().append("Served at: ").append(request.getContextPath());
        }
        /**
         * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
         *      response)
         */
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                LOG.debug("========================");
                LOG.debug("=4 doPost()=");
                LOG.debug("========================");
                doGet(request, response);
        }
}
