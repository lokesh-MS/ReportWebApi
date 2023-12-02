using MongoDB.Driver;
using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public class signUpService : IsignUp
    {
        private readonly IMongoCollection<SignUp> _signUP;
        public signUpService( IdataBaseSetting idataBaseSetting,IMongoClient mongoClient)
        {
            var Database = mongoClient.GetDatabase(idataBaseSetting.DatabaseName);

            _signUP  = Database.GetCollection<SignUp>("UserInfo");
        }
        public SignUp Create(SignUp signup)
        {
            _signUP.InsertOne(signup);
            return signup;
        }
        public SignUp GetAll (string user)
        {
            //return _login.Find(Login => Login.Id == id).FirstOrDefault();
             
              var Userdata=  _signUP.Find(SignUp => SignUp.Username == user).FirstOrDefault();


            return Userdata;
        }
    }
}
