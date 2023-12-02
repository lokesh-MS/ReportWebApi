using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public interface IrecordInfo
    {
        List<Records> Get();
        Records Get(string id);
        Records Create(Records records);
        void Update(string id, Records records);
        void Delete(string id);
    }
}
