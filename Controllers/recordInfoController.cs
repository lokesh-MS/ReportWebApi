using Microsoft.AspNetCore.Mvc;
using ReportWebAPI.Models;
using ReportWebAPI.Services;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ReportWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class recordInfoController : ControllerBase
    {
        private readonly IrecordInfo _recordInfo;
        public recordInfoController(IrecordInfo irecordInfo )
        {
           this._recordInfo = irecordInfo;
        }
        // GET: api/<recordInfoController>
        [HttpGet]
        public List<Records> Get()
        {
           var data= _recordInfo.Get();
            return data;
        }

        // GET api/<recordInfoController>/5
        [HttpGet("{id}")]
        public ActionResult<Records> Get(string id)
        {
            var record = _recordInfo.Get(id);
            if (record == null)
            {
                return NotFound("Record Not Found");
            }
            return record;
        }

        // POST api/<recordInfoController>
        [HttpPost]
        public ActionResult<Records> Post([FromBody] Records value)
        {
            _recordInfo.Create(value);
            return Ok(value);
        }

        // PUT api/<recordInfoController>/5
        [HttpPut("{id}")]
        public ActionResult Put(string id, [FromBody] Records value)
        {
            var ExistingRecord = _recordInfo.Get(id);
             value.Id= id;
            if (ExistingRecord == null)
            {
                return NotFound("Record Not Found");
            }
            _recordInfo.Update(id, value);
            return Ok(value);
        }

        // DELETE api/<recordInfoController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(string id)
        {
            var ExistingRecord = _recordInfo.Get(id);
            if (ExistingRecord == null)
            {
                return NotFound("Record Not Found");
            }
            _recordInfo.Delete(id);
            //return Ok($"{ExistingRecord.Id} deleted");
            return Ok(ExistingRecord.Id);

        }
    }
}
