package shared;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;

public class SendMail {
    private static final String from = "ltoanthanh@gmail.com";
    public Properties toMail(String to, String subject, String body){
        Properties p = new Properties();
        Properties p1 = new Properties();
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.host", "smtp.gmail.com");
        p.put("mail.smtp.port", 587);
        Session s = Session.getInstance(p,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("ltoanthanh@gmail.com","a@01219345z");
                    }
                });

        try {
            Message msg = new MimeMessage(s);
            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            msg.setSubject(subject);
            msg.setContent(body, "text/plain");
            msg.setText(body);
            Transport.send(msg);
            p1.put("receiver",to);
            p1.put("body",body);
            return p1;
        } catch (MessagingException e){
            return null;
        }
    }

    public String getBody() throws MessagingException, IOException{
        Properties p = new Properties();
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.host", "smtp.gmail.com");
        p.put("mail.smtp.port", 587);
        Session s = Session.getInstance(p,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("ltoanthanh@gmail.com","a@01219345z");
                    }
                });
        s.getTransport();
        Message msg = new MimeMessage(s);
        msg.getRecipients(Message.RecipientType.CC);
        msg.getContent();
        String text = msg.getContent().toString();
        if (text != null){
            return text;
        }
        return null;
    }
}
