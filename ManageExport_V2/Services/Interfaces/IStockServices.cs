﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ManageExport_V2.Models.Entity;
namespace ManageExport_V2.Services.Interfaces
{
    public interface IStockServices
    {
        Task<IQueryable<Stock>> GetStock();
        Task<Stock> GetStockById(int Id);
    }
}
