using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Mvc.Models
{
    public class MessageInfo
    {
        [Key]
        [Required]
        public int Id { get; set; }
        /// <summary>
        /// 评论人
        /// </summary>
        [Column("author", TypeName = "varchar(20)")]
        public string author { get; set; }
        /// <summary>
        /// 评论内容
        /// </summary>
        public string contents { get; set; }
        /// <summary>
        /// 点赞数
        /// </summary>
        public int clickCount { get; set; }
        /// <summary>
        /// 评论时间
        /// </summary>
        public DateTime create_time { get; set; }     
    }
}
