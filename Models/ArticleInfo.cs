using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Models
{
   public class ArticleInfo
    {
        [Key]
        [Required]
        public int Id { get; set; }
        /// <summary>
        /// 博客标题
        /// </summary>
        public string title { get; set; }
        /// <summary>
        /// 博客内容
        /// </summary>
        public string contents { get; set; }
        /// <summary>
        /// 作者
        /// </summary>
        public string author { get; set; }
        /// <summary>
        /// 发布时间
        /// </summary>
        public DateTime create_time { get; set; }
        /// <summary>
        /// 点赞数
        /// </summary>
        public int clickCount { get; set; }
        /// <summary>
        /// 封面
        /// </summary>
        public string photo { get; set; }
    }
}
