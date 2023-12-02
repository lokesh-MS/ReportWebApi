using Microsoft.AspNetCore.Mvc;
using ReportWebAPI.Models;
using ReportWebAPI.Services;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ReportWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class signUpController : ControllerBase
    {
        private readonly IsignUp signUpService;

        public signUpController( IsignUp signUpService)
        {

            this.signUpService = signUpService;

        }
        // GET: api/<signUpController>
        //[HttpGet]
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET api/<signUpController>/5
        //[HttpGet("{id}")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST api/<signUpController>
        [HttpPost]
        public ActionResult<SignUp> Post([FromBody] SignUp value)
        {
            var ExistUser = signUpService.GetAll(value.Username);
            if(value.Username =="" && value.Password == "")
            {
                return NotFound("Please Check Input Fields");
            }
           else if (ExistUser == null)
            {
                var data = signUpService.Create(value);
                return Ok(data);
            }
            else
            {
                return NotFound("UserName Already Taken");
            };
                
        }

        //// PUT api/<signUpController>/5
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody] string value)
        //{
        //}

        //// DELETE api/<signUpController>/5
        //[HttpDelete("{id}")]
        //public void Delete(int id)
        //{
        //}
    }
}
