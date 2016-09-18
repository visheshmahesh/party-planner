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
              if(FileUpload.HasFile)
              {
                //     msg.Attachments.Add(new Attachment(FileUpload.PostedFile.InputStream, FileUpload.));
                //     msg.Attachments.Add(new Attachment(Server.MapPath("~/image.jpg")));
           //     string FileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                msg.Attachments.Add(new Attachment(FileUpload.PostedFile.InputStream, "~/ image.jpg"));

            }
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