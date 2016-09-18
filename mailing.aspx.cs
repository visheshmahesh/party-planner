using System;
using System.Net;
using System.Net.Mail;
public partial class mailing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs args)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(tbxYourMail.Text, "Senders name");

            msg.To.Add(new MailAddress(tbxToMail.Text));
            msg.Subject = tbxSubject.Text;
            msg.Body = tbxMessage.Text;
            msg.IsBodyHtml = true;
            msg.Attachments.Add(new Attachment(@"C:\Users\win10\Documents\Visual Studio 2015\WebSites\PartyPlanner\App_Data"));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential(tbxYourMail.Text, tbxYourPass.Text);
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Send(msg);
            lblResult.Visible = true;
            lblResult.Text = "email send successfully";
        }
        catch (Exception e)
        {
            lblResult.Text = e.Message;
        }
    }


}