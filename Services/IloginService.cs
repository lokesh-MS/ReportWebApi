using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public interface IloginService
    {
        List<Login> Get();
        Login Get(string id);
        Login Create(Login login);
        void Update(string id, Login login);
        void Delete(string id);
        //Login Jwt(Login login);
    }
}
