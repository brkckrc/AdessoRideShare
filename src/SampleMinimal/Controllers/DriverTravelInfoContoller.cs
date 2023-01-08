using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DriverTravelInfoContoller : ControllerBase
    {
        private readonly IDriverTravelInfoService _service;
        private readonly IMapper _mapper;

        public DriverTravelInfoContoller(IDriverTravelInfoService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
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

        [HttpPost]
        public async Task<IActionResult> Add(DriverTravelInfoDTO model)
        {
            var result= await _service.AddAsync(model);
            return Created("", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(DriverTravelInfoDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<DriverTravelInfo>(model));
            return NoContent();
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(new TravelInfo() { Id = id });
            return NoContent();
        }
    }
}
