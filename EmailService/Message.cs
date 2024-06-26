﻿using Microsoft.AspNetCore.Http;
using MimeKit;

namespace EmailService
{
    public class Message
    {
        public List<MailboxAddress> To { get; set; }
        public string Subject { get; set; }
        public string Content { get; set; }
        public string ReceiverName { get; set; }

        public IFormFileCollection Attachments { get; set; }

        public Message(IEnumerable<string> to, string subject, string content, string receiverName, IFormFileCollection attachments)
        {
            To = new List<MailboxAddress>();

            To.AddRange(to.Select(x => new MailboxAddress("fauxtix.luix@gmail.com",x)));
            Subject = subject;
            Content = content;
            Attachments = attachments;
            ReceiverName = receiverName;
        }
    }
}
