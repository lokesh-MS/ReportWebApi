namespace ReportWebAPI.Models
{
    public class DatabaseSetting:IdataBaseSetting
    {
        public string collectionName { get; set; } = string.Empty;
        public string ConnectionStrings { get; set; } = string.Empty;
        public string DatabaseName { get; set; } = string.Empty;
    }
}
