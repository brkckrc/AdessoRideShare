using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TravelInfoContoller : ControllerBase
    {
        private readonly ITravelInfoService _service;
        private readonly IMapper _mapper;

        public TravelInfoContoller(ITravelInfoService service, IMapper mapper)
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
        public async Task<IActionResult> Add(TravelInfoDTO model)
        {
           var result= await _service.AddAsync(model);
            if(result.Id>0) return Problem(detail: $"{model.BeginningId} and {model.LastStationId} already exist",statusCode: (int)HttpStatusCode.OK);
            return Created("", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(TravelInfoDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<TravelInfo>(model));
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
