using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Interfaces
{
    public interface IRepository<T> where T : class
    {
        Task<IQueryable<T>> GetAllAsync();
        IQueryable<T> GetAll();
        Task<IQueryable<T>> QueryAsync(Expression<Func<T, bool>> filter);
        Task<T> QuerySingleAsync(Expression<Func<T, bool>> filter);
        IQueryable<T> Query(Expression<Func<T, bool>> filter);
        T GetById(object id);
        Task<T> GetByIdAsync(object id);
        Task<T> GetByGuidAsync(Guid guid);
        Task<T> GetByNameAsync(string name);
        Task<T> AddAsync(T entity);
        Task<T> UpdateAsync(T entity);
        Task<T> DeleteAsync(T entity);
        Task<T> DeleteAsync(object id);
        Task<bool> SaveAsync();
    }
}
