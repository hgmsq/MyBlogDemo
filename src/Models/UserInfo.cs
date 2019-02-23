using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mvc.Models
{
    public class UserInfo
    {
        /// <summary>
        /// 主键
        /// </summary>
        [Key]
        [DisplayName("主键"),Required]        
        public int Id { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        [DisplayName("姓名")]
        [Column("name", TypeName = "varchar(50)")]
        public string name { get; set; }
        /// <summary>
        /// 地址
        /// </summary>
        [DisplayName("地址")]
        [Column("address", TypeName = "varchar(200)")]
        public string address { get; set; }
        /// <summary>
        /// 年龄
        /// </summary>
        [DisplayName("年龄")]
        public int Age { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        [DisplayName("邮箱")]
        [Column("email", TypeName = "varchar(200)")]
        public string email { get; set; }
        /// <summary>
        /// 手机号
        /// </summary>
        [DisplayName("手机号")]
        [Column("mobile", TypeName = "varchar(20)")]
        public string mobile { get; set; }       
    }
}