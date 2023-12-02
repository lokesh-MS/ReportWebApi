using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;

namespace ReportWebAPI.Models
{
    public class Records
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; } = string.Empty;
        
        public string sender_Name { get; set; }
       
        public string Receiver_Name { get; set; }
        public string Add_CC { get; set; }
        public string Message { get; set; }
        public string Stared { get; set; } 
        public string Inserted_Time { get; set; }
        public string Subject { get; set; }
        public string File_Name { get;set; }
        public string File_Code { get; set; }   
        public string Is_Message_Open { get; set; }

    }
}
