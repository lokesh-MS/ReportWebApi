using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public interface IsignUp
    {
        SignUp Create(SignUp signup);

        SignUp GetAll(string user);
    }
}
