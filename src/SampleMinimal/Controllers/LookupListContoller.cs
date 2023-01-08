using Microsoft.AspNetCore.Mvc;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LookupListContoller : ControllerBase
    {
        private readonly ILookupListService _service;
        private readonly IMapper _mapper;

        public LookupListContoller(ILookupListService service, IMapper mapper)
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
        public async Task<IActionResult> Add(LookupListDTO model)
        {
            await _service.AddAsync(_mapper.Map<LookUpList>(model));
            return Created("Oluştu", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(LookupListDTO model)
        {
            await _service.UpdateAsync(_mapper.Map<LookUpList>(model));
            return Ok("Güncellendi");
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(id);
            return Ok("Silindi");
        }
    }
}
