using EfUnexpectedDeletion.Data;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using System;
using EfUnexpectedDeletion.Entities;
using System.Threading.Tasks;
using System.Linq;

namespace EfUnexpectedDeletion
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var conn = "server=.;database=question;integrated security=true";
            var host = new HostBuilder()
                .ConfigureServices(services =>
                {
                    services.AddDbContext<MyDbContext>(options => options.UseSqlServer(conn));
                }).Build();

            using (var db = host.Services.GetRequiredService<MyDbContext>())
            {
                var newQuestion = new Question
                {
                    Title = "test " + DateTime.Now.ToLongDateString(),
                    Owner = await db.Set<User>().FirstAsync(u => u.Id == 1)
                };

                var latestQuestion = await db.Set<Question>()
                    .Where(q => q.UserId == 1).OrderByDescending(q => q.Id).FirstOrDefaultAsync();

                db.Set<Question>().Add(newQuestion);
                await db.SaveChangesAsync();
            }
        }
    }
}
