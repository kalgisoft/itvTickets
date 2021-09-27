using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace ItvTicketsService.Shared.Models
{
    public class UserInfo
    {
        public int Id { get; set; }

        public string UserName { get; set; }

        //public int PlantId { get; set; }

        public int UserRole { get; set; }

        public string UserRoleName { get; set; }

        public List<int> Plants { get; set; }
    }

}
