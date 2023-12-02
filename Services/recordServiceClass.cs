using MongoDB.Driver;
using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public class recordServiceClass : IrecordInfo
    {
        private readonly IMongoCollection<Records> _recordCollection;
        public recordServiceClass( IdataBaseSetting idataBaseSetting,IMongoClient mongoClient)
        {
          var dataBase =  mongoClient.GetDatabase(idataBaseSetting.DatabaseName);
            this._recordCollection = dataBase.GetCollection<Records>("RecordsInfo");

        }
        public Records Create(Records records)
        {
            _recordCollection.InsertOne(records);
            return records;
        }

        //public void Delete(string id)
        //{
        //    throw new NotImplementedException();
        //}

        //public List<Records> Get()
        //{
        //    throw new NotImplementedException();
        //}

        //public Records Get(string id)
        //{
        //    throw new NotImplementedException();
        //}

        //public void Update(string id, Records records)
        //{
        //    throw new NotImplementedException();
        //}

        public void Delete(string id)
        {
            _recordCollection.DeleteOne(Records => Records.Id == id);
        }


        public Records Get(string id)
        {
            return _recordCollection.Find(Records => Records.Id == id).FirstOrDefault();
        }

        public List<Records> Get()
        {
            return _recordCollection.Find(Records => true).ToList();
        }

        public void Update(string id, Records record)
        {
            _recordCollection.ReplaceOne(Records => Records.Id == id, record);
        }
    }
}
