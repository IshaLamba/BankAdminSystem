package com.Project;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class emaild
 */
@WebServlet("/emaild")
public class emaild extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emaild() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accno=(String) request.getAttribute("AccountNo.");
		String name=(String)request.getAttribute("Name");
		String email=(String)request.getAttribute("Emaile");
		final String from="avgoyal19@gmail.com";
		final String password="vinay.aastha";
		String one="Greetings!";

		String two="You are now a registered customer of BANK bank. For your reference , here are the crediantials you've provided during the registration process." ;
		String seven="Name:"+name;
		String three="ACCOUNT NO.:"+accno;

		String four="Visit any of our nearest branches and use your account number for all transactions.";

		String five="***This is a system-generated mail , please do not respond to this e-mail id. Got a question or need clarifications ?";
		String six="You can write to us at avgoyal19@gmail.com. We'll get in touch with you as soon as possible.";
	
		Properties properties= new Properties();

	properties.put("mail.smtp.host", "smtp.gmail.com");
	properties.put("mail.smtp.socketFactory.port", "465");
	properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	properties.put("mail.smtp.auth", "true");
	properties.put("mail.smtp.port", "465");
	
		try{
		javax.mail.Session session= Session.getDefaultInstance(properties, new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
			return new PasswordAuthentication(from,password);	
			} } );	
	
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress("avgoyal19@gmail.com"));
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
		message.setSubject("Employee Registration");
		message.setText(""+one+""+two+""+seven+""+three+""+four+""+five+""+six);
		Transport.send(message);
		response.sendRedirect("upload.jsp");
	
		}catch(Exception e)
		{
			response.sendRedirect("UserLogin.jsp");
	
		}
	}

}
