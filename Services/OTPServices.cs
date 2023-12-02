using DnsClient.Protocol;
using MongoDB.Driver;
using ReportWebAPI.Models;

namespace ReportWebAPI.Services
{
    public class OTPServices
    {
        private readonly IMongoCollection<OTP> _OTPCollection;
        public OTPServices(IdataBaseSetting idataBaseSetting, IMongoClient mongoClient)
        {
            var dataBase = mongoClient.GetDatabase(idataBaseSetting.DatabaseName);
            this._OTPCollection = dataBase.GetCollection<OTP>("OTP");

        }

        public Task<OTP> Get(OTP Otp)
        {
            //return _login.Find(Login => Login.Id == id).FirstOrDefault();

            var OTP_DATA = _OTPCollection.Find(OTP => OTP.Otp == Otp.Otp).FirstOrDefault();

            return Task.FromResult(OTP_DATA);
            
        }
        //public List<OTP> InsertOneAsync(OTP otpModel)
        //  {
        //    _OTPCollection.InsertOne(otpModel);
        //      return 
        //  }

        public async Task<OTP> InsertOneAsync(OTP otpModel)
        {
            await _OTPCollection.InsertOneAsync(otpModel);
            return otpModel;
        }
    }
}
