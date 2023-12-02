using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using ReportWebAPI.Models;
using ReportWebAPI.Services;
using System.Collections.Specialized;
using System.Net;
using System.Web;

using System;
using System.Net.Mail;


namespace ReportWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OTPController : ControllerBase
    {
        private readonly OTPServices _dbContext;
        private readonly SmtpClient _smtpClient;
        private readonly string _emailFrom;
        public OTPController(OTPServices dbContext)
        {
            this._dbContext = dbContext;
        }

       

        //[HttpPost("send")]
        //public async Task<IActionResult> SendOtp(string smtpServer, int smtpPort, string smtpUsername, string smtpPassword, string emailFrom)
        //{



        //    _smtpClient = new SmtpClient(smtpServer)
        //    {
        //        Port = smtpPort,
        //        Credentials = new NetworkCredential(smtpUsername, smtpPassword),
        //        EnableSsl = true,
        //    };
        //    _emailFrom = emailFrom;
        //}

        //public void SendOtp(string email, string otp)
        //{
        //    var mailMessage = new MailMessage
        //    {
        //        From = new MailAddress(_emailFrom),
        //        Subject = "Your OTP Code",
        //        Body = $"Your OTP code is: {otp}",
        //        IsBodyHtml = false,
        //    };
        //    mailMessage.To.Add(email);
        //    _smtpClient.Send(mailMessage);




        //}
    }
}
