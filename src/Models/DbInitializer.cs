using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Mvc.Models
{
    public class DbInitializer
    {
        public static void Initialze(Usercontext context)
        {
            context.Database.EnsureDeleted();//先删除
            context.Database.EnsureCreated();//再重建            
        }
    }
}
