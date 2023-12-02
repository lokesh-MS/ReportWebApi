namespace ReportWebAPI.Models
{
    public interface IdataBaseSetting
    {
        string collectionName { get; set; }
        string ConnectionStrings { get; set; }
        string DatabaseName { get; set; }

    }
}
