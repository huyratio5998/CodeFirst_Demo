﻿using ManageExport_V2.Services.Interfaces;
using System;
using System.Threading.Tasks;
using ManageExport_V2.Models.Entity;
using System.Collections.Generic;
using ManageExport_V2.Repositories.Interfaces;
using System.Linq;

namespace ManageExport_V2.Services
{
    public class StockServices : IStockServices
    {
        private IUnitOfWork _unitOfWork;
        public StockServices(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<IQueryable<Stock>> GetStock()
        {
            try
            {
                var stocks = await _unitOfWork.StockRepository.GetAll();
                return stocks;
            }
            catch (Exception e)
            {
                throw e;
            }
        }        
        public async Task<Stock> GetStockById(int Id)
        {
            return await _unitOfWork.StockRepository.GetSingleById(Id);
        }
    }
}
