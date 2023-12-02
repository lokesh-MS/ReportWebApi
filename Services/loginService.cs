using MongoDB.Driver;
using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public class loginService : IloginService
    {
        private readonly IMongoCollection<Login> _login;

        public loginService(IdataBaseSetting idataBaseSetting , IMongoClient mongoClient)
        {
           var Database= mongoClient.GetDatabase(idataBaseSetting.DatabaseName);
          _login = Database.GetCollection<Login>("UserInfo");
        }
        public Login Create(Login login)
        {
            
            return _login.Find(Login => Login.Username == login.Username && Login.Password == login.Password).FirstOrDefault(); ;
        }

        public void Delete(string id)
        {
            _login.DeleteOne(Login=>Login.Id==id);
        }

        public List<Login> Get()
        {
            return _login.Find(Login=>true).ToList();
        }

        public Login Get(string id)
        {
            return _login.Find(Login=>Login.Id == id).FirstOrDefault();
        }

        public void Update(string id, Login login)
        {
            _login.ReplaceOne(Login=>Login.Id==id, login);
        }
        //public Login Jwt(Login login)
        //{
        //    return (Login)_login.Find(Login => Login.Username == login.Username);
        //}
    }
}
