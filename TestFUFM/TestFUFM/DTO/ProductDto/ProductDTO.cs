﻿using BusinessObjects.Models;
using DTO.CategoryDto;
using DTO.Mappers;
using DTO.ProductImageDto;
using System.Collections.Generic;

namespace DTO.ProductDto
{
    public class ProductDTO
    {
        public int ProductId { get; set; }

        public string ProductName { get; set; } = null!;


        public decimal Price { get; set; }

        public bool IsNew { get; set; }


        public string Description { get; set; } = null!;


        public int SellerId { get; set; }

        public int CategoryId { get; set; }


        public int Status { get; set; }

        public List<CategoryDTO> Categories { get; set; }
        public  List<ProductImageDTO> ProductImages { get; set; }

    }
}