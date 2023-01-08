using Microsoft.AspNetCore.Mvc;

namespace SampleMinimal.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LookupContoller : ControllerBase
    {
        private readonly ILookupService _lookupService;
        private readonly IMapper _mapper;

        public LookupContoller(ILookupService lookupService, IMapper mapper)
        {
            _lookupService = lookupService;
            _mapper = mapper;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var result = await _lookupService.GetAllAsync();
           return Ok(result.Select(fz => _mapper.Map<LookUpDTO>(fz)));
        }


        [HttpGet("{id}")]

        public async Task<IActionResult> GetById(int id)
        {
            var product = await _lookupService.GetByIdAsync(id);
            if (product == null) return NotFound();
            return Ok(product);
        }

        [HttpPost]
        public async Task<IActionResult> Add(LookUpDTO model)
        {
            await _lookupService.AddAsync(_mapper.Map<LookUp>(model));
            return Created("", model);
        }

        [HttpPut]

        public async Task<IActionResult> Update(LookUpDTO model)
        {
            await _lookupService.UpdateAsync(_mapper.Map<LookUp>(model));
            return NoContent();
        }

        [HttpDelete("{id}")]

        public async Task<IActionResult> Delete(int id)
        {
            await _lookupService.DeleteAsync(new LookUp() { Id = id });
            return NoContent();
        }
    }
}
