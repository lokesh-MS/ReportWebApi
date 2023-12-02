using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using ReportWebAPI.Models;
using ReportWebAPI.Services;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ReportWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly IloginService loginService;

        public LoginController(IloginService loginService)
        {
            this.loginService = loginService;
        }

        //// GET: api/<LoginController>
        //[HttpGet]
        //public ActionResult<List<Login>> Get()
        //{
        //    return loginService.Get();
        //}

        //// GET api/<LoginController>/5
        //[HttpGet("{id}")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST api/<LoginController>
        [HttpPost("authenticate")]
        public ActionResult<Login> Post([FromBody] Login login )
        {
            //loginService.Create(login);
            //var user= CreatedAtAction(nameof(Get), new { id= login.Id}, login);
            var user = loginService.Create(login);
            if (user == null)
            {
                return NotFound(new { Message = "user not found!" });
            }
            var token = CreateJwt(user);
            return Ok(new
            {

                Token = token,
                username = user.Username,
                Message = "Login Success!"
            });
        }

        //// PUT api/<LoginController>/5
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody] string value)
        //{
        //}

        //// DELETE api/<LoginController>/5
        //[HttpDelete("{id}")]
        //public void Delete(int id)
        //{
        //}

        private const string Secret = "db3OIsj+BXE9NZDy0t8W3TcNekrF+2d/1sFnWG4HnV8TZY30iTOdtVWJG8abWvB1GlOgJuQZdcF2Luqm/hccMw==";
        private string CreateJwt(Login login)
        {

            var jwtTokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(Secret);
            var identity = new ClaimsIdentity(new Claim[]
            {
                //new Claim(ClaimTypes.Role,login.Role),
                new Claim(ClaimTypes.Name,$"{login.Username}{login.Password}"),
            });
            var credential = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = identity,
                Expires = DateTime.Now.AddDays(1),
                SigningCredentials = credential

            };
            var token = jwtTokenHandler.CreateToken(tokenDescriptor);
            return jwtTokenHandler.WriteToken(token);


        }
    }
}
