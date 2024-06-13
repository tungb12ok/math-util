using BusinessObjects.Models;
using Microsoft.EntityFrameworkCore;
using Repository.Interfaces;

namespace Repository;

public class TransactionRepository:ITransactionRepository
{
    private readonly FufleaMarketContext _context;

    public TransactionRepository(FufleaMarketContext context)
    {
        _context = context;
    }

    public async Task<Transaction> GetByIdAsync(int id)
    {
        return await _context.Transactions.FirstOrDefaultAsync(t => t.OrderId == id);
    }

    public async Task<IEnumerable<Transaction>> GetAllAsync()
    {
        return await _context.Transactions.ToListAsync();
    }

    public async Task AddAsync(Transaction transaction)
    {
        _context.Transactions.Add(transaction);
        await _context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Transaction transaction)
    {
        _context.Transactions.Update(transaction);
        await _context.SaveChangesAsync();
    }

    public async Task DeleteAsync(int id)
    {
        var transaction = await _context.Transactions.FirstOrDefaultAsync(t => t.OrderId == id);
        if (transaction != null)
        {
            _context.Transactions.Remove(transaction);
            await _context.SaveChangesAsync();
        }
    }
}