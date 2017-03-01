using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CASScaid.Models
{
    public class Category
    {
        [Key]
        [ForeignKey("Category")]
        public int CategoryID { get; set; }
        [StringLength(50)]
        [Display(Name = "CategoryName")]
        public string CategoryName { get; set; }

    //    public virtual TopicTypeID { get; set; }

    //public virtual TopicType TopicTypeID { get; set; }
    }
}