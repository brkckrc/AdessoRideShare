using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Infra.Repository
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private readonly ApplicationDbContext _context;
        private DbSet<T> _entities;
        public Repository(ApplicationDbContext context)
        {
            if (context == null)
                throw new ArgumentNullException("EntitiesContext");

            _context = context;
            _entities = context.Set<T>();
        }
        public async Task<IQueryable<T>> GetAllAsync()
        {
            return await Task.FromResult(_entities);
        }

        public IQueryable<T> GetAll() => _entities;
        public async Task<IQueryable<T>> QueryAsync(Expression<Func<T, bool>> filter)
        {
            return await Task.FromResult(_entities.Where(filter));
        }
        public IQueryable<T> Query(Expression<Func<T, bool>> filter) => _entities.Where(filter);
        public async Task<T> QuerySingleAsync(Expression<Func<T, bool>> filter)
        {
            return await _entities.Where(filter).FirstOrDefaultAsync();
        }
        public T GetById(object id)
        {
            return  _entities.Find(id);
        }
        public async Task<T> GetByIdAsync(object id)
        {
            return await _entities.FindAsync(id);
        }

        public async Task<T> GetByGuidAsync(Guid guid)
        {
            return await _entities.FindAsync(guid);
        }

        public async Task<T> GetByNameAsync(string name)
        {
            return await _entities.FindAsync(name);
        }

        public async Task<T> AddAsync(T entity)
        {
            if (entity == null)
                throw new ArgumentNullException("entity");

            _entities.Add(entity);
            var results = await SaveAsync();

            return entity;
        }

        public async Task<T> UpdateAsync(T entity)
        {
            if (entity == null)
                throw new ArgumentNullException("entity");

            _entities.Update(entity);
            var results = await SaveAsync();

            return entity;
        }

        public async Task<T> DeleteAsync(T entity)
        {
            if (entity == null)
                throw new ArgumentNullException("entity");

            _entities.Remove(entity);
            var results = await SaveAsync();

            return entity;
        }
        public async Task<T> DeleteAsync(object id)
        {
            if (id == null)
                throw new ArgumentNullException("id");
            dynamic entity = await this.GetByIdAsync(id);
            if (entity == null)
                throw new ArgumentNullException("id");
            entity.IsDeleted=true;
            await  _entities.Update(entity);
            return entity;
        }
        public async Task<bool> SaveAsync()
        {
            ChangeTrickers();
            return await _context.SaveChangesAsync() > 0;
        }
         private void ChangeTrickers()
        {
            var modifiedEntries = _context.ChangeTracker.Entries()
                .Where(x => x.Entity is IAuditableEntity
                    && x.State != EntityState.Detached);

            foreach (var entry in modifiedEntries)
            {
                IAuditableEntity entity = entry.Entity as IAuditableEntity;
                if (entity != null)
                {
                    var identityName = "";
                    DateTime now = DateTime.UtcNow;

                    if (entry.State == EntityState.Added)
                    {
                        entity.CreatedBy = identityName;
                        entity.CreatedDate = now;
                    }
                    else
                    {
                        _context.Entry(entity).Property(x => x.CreatedBy).IsModified = false;
                        _context.Entry(entity).Property(x => x.CreatedDate).IsModified = false;
                        if ((entry.Entity as BaseEntity).IsDeleted)
                        {
                            entity.DeletedBy = identityName;
                            entity.DeletedDate = now;
                        }
                    }

                    entity.UpdatedBy = identityName;
                    entity.UpdatedDate = now;
                }
            }
        }

        
    }
}
