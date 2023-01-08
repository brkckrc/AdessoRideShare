using Microsoft.AspNetCore.Mvc;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VehicleContoller : ControllerBase
    {
        private readonly IVehicleService _service;
        private readonly IMapper _mapper;

        public VehicleContoller(IVehicleService service, IMapper mapper)
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
        public async Task<IActionResult> Add(VehicleDTO model)
        {
            await _service.AddAsync(_mapper.Map<Vehicle>(model));
            return Created("", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(VehicleDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<Vehicle>(model));
            return NoContent();
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(new Vehicle() { Id = id });
            return NoContent();
        }
    }
}
