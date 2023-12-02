using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace ReportWebAPI.Models
{
    [BsonIgnoreExtraElements]
    public class SignUp
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; } = string.Empty;
        public string Username { get; set; }
        public string Password { get; set; }
        public string SignUpdate {  get; set; }
       
    }
}
