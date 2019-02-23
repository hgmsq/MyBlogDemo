using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mvc.Models
{
    public class ArticleInfo
    {
        [Key]
        [Required]
        public int Id { get; set; }
        /// <summary>
        /// 博客标题
        /// </summary>
        [Column("title", TypeName = "varchar(100)")]
        public string title { get; set; }
        /// <summary>
        /// 博客内容
        /// </summary>
        public string contents { get; set; }
        /// <summary>
        /// 作者
        /// </summary>
        [Column("author", TypeName = "varchar(20)")]
        public string author { get; set; }
        /// <summary>
        /// 发布时间
        /// </summary>
        public DateTime create_time { get; set; }
        /// <summary>
        /// 阅读数
        /// </summary>
        public int viewCount { get; set; }
        /// <summary>
        /// 点赞数
        /// </summary>
        public int clickCount { get; set; }
        /// <summary>
        /// 封面
        /// </summary>
        [Column("photo", TypeName = "varchar(100)")]
        public string photo { get; set; }
    }
}
