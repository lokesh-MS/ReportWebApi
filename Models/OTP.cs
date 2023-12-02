using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;

namespace ReportWebAPI.Models
{
    public class OTP
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; }
        public string MobileNumber { get; set; }
        public string Otp { get; set; }
    }
}
