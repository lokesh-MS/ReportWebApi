using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System.Security.Claims;

namespace ReportWebAPI.Models
{
    [BsonIgnoreExtraElements]
    public class Login
    {
       

        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; }=string.Empty;
        public string Username { get; set;}
        public string Password { get; set;} 
        public string IsActive { get; set;}
        public string Token { get; set; }
        //public ClaimsIdentity Role { get; internal set; }
    }
}
