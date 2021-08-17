package com.servlet;

import com.DAO.CheckInDAO;
import com.DAO.CheckoutDAO;
import com.DB.DBConnection;
import com.entities.CompleteData;
import com.entities.check_in;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

@WebServlet(name = "CheckoutServlet")
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingid = request.getParameter("bookingid");
        String checkout = request.getParameter("checkoutdate");

        CheckoutDAO chdao = new CheckoutDAO(DBConnection.getConnection());
        boolean check = chdao.checkedOut(new check_in(bookingid, checkout));
        CompleteData cd=chdao.getData(bookingid);

        if (check) {
            Document document = new Document();
            try {
                PdfWriter.getInstance(document, new FileOutputStream("D:\\BookingBills\\"+bookingid+".pdf"));
                Date d1 = new SimpleDateFormat("yyyy-MM-dd").parse(cd.getCheckedInDate());
                Date d2 = new SimpleDateFormat("yyyy-MM-dd").parse(cd.getCheckedOutDate());

                long duration  = d2.getTime() - d1.getTime();

                long diffInDays = TimeUnit.MILLISECONDS.toDays(duration);

                document.open();
                Font font = FontFactory.getFont(FontFactory.COURIER, 20, BaseColor.BLACK);
                Font font1 = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
                Paragraph chunk = new Paragraph("Hotel Management System\n", font);
                Paragraph chunk1 = new Paragraph("Customer's Detail\n", font);
                Paragraph chunk2 = new Paragraph("Booking Id:"+bookingid+"\nName: "+cd.getRb().getName()+"\nE-mail: "+cd.getRb().getEmail()+"\nPhone Number: "+cd.getRb().getPhone()+"\nAddress:"+cd.getRb().getAddress()+"\n ", font1);
                Paragraph chunk3 = new Paragraph("\nCheckIn Date: "+cd.getCheckedInDate()+"\nCheckOut Date: "+cd.getCheckedOutDate()+" \nTotal Days: "+diffInDays+"\nPrice: "+cd.getPrice()+"\nAmount: "+Integer.parseInt(cd.getPrice())*diffInDays, font1);
                document.add(chunk);
                document.add(chunk1);
                document.add(chunk2);
                document.add(chunk3);
                document.close();

            } catch (DocumentException | ParseException e) {
                e.printStackTrace();
            }

            response.sendRedirect("billing.jsp");
        } else {
            response.sendRedirect("Check_out.jsp");
        }
    }

}
