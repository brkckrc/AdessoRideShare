using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PassengerTravelInfoContoller : ControllerBase
    {
        
        private readonly IPassengerTravelInfoService _service;
        private readonly IMapper _mapper;

        public PassengerTravelInfoContoller(IPassengerTravelInfoService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll() => Ok(await _service.GetAllAsync());


        [HttpGet("{id}")]

        public async Task<IActionResult> GetById(int id)
        {
            var model = await _service.GetByIdAsync(id);
            if (model == null) return NotFound();
            return Ok(model);
        }

        [HttpPost]
        public async Task<IActionResult> Add(PassengerTravelInfoDTO model)
        {
            return Created(await _service.AddAsync(model), model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(PassengerTravelInfoDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<PassengerTravelInfo>(model));
            return NoContent();
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(id);
            return NoContent();
        }
    }
}
