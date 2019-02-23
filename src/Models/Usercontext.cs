using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Protocols;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Mvc.Models
{
    public class Usercontext : DbContext
    {

        public Usercontext(DbContextOptions<Usercontext> options) : base(options)
        {
          
        }
       

        public DbSet<UserInfo> UserInfo { get; set; }
        public DbSet<ArticleInfo> ArticleInfo { get; set; }
        public DbSet<CommentInfo> CommentInfo { get; set; }
        public DbSet<MessageInfo> MessageInfo { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {            
            //base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<UserInfo>();
            modelBuilder.Entity<ArticleInfo>();
            modelBuilder.Entity<CommentInfo>();
            modelBuilder.Entity<MessageInfo>();
        }
    }
}
