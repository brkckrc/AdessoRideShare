using Microsoft.AspNetCore.Mvc;
using SampleMinimal.Core.Enums;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserContoller : ControllerBase
    {
        private readonly IUserService _service;
        private readonly IDriverTravelInfoService _driverTravelInfoService;
        private readonly IMapper _mapper;

        public UserContoller(IUserService service, IDriverTravelInfoService driverTravelInfoService, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
            this._driverTravelInfoService = driverTravelInfoService;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll() => Ok(await _service.GetAllAsync());


        [HttpGet("{id}")]

        public async Task<IActionResult> GetById(int id)
        {
            var product = await _service.GetByIdAsync(id);
            if (product == null) return NotFound();
            return Ok(product);
        }

        [HttpPost("AddDriver")]
        public async Task<IActionResult> AddDriver(DriverDTO model)
        {
            await _service.AddDriverAsync(model);
            return Created("", model);
        }
        [HttpPost("AddPassenger")]
        public async Task<IActionResult> AddPassenger(AppUserDTO model)
        {
            await _service.AddPassengerAsync(model);
            return Created("", model);
        }

        [HttpPost("AddDriverRoute")]
        public async Task<IActionResult> AddDriverRoute(DriverTravelInfoDTO model)
        {
            await _driverTravelInfoService.AddAsync(_mapper.Map<DriverTravelInfo>(model));
            return Created("", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(AppUserDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<AppUser>(model));
            return NoContent();
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(new LookUp() { Id = id });
            return NoContent();
        }
    }
}
