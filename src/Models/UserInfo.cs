using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mvc.Models
{
    public class UserInfo
    {
        /// <summary>
        /// ����
        /// </summary>
        [Key]
        [DisplayName("����"),Required]        
        public int Id { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        [DisplayName("����")]
        [Column("name", TypeName = "varchar(50)")]
        public string name { get; set; }
        /// <summary>
        /// ��ַ
        /// </summary>
        [DisplayName("��ַ")]
        [Column("address", TypeName = "varchar(200)")]
        public string address { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        [DisplayName("����")]
        public int Age { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        [DisplayName("����")]
        [Column("email", TypeName = "varchar(200)")]
        public string email { get; set; }
        /// <summary>
        /// �ֻ���
        /// </summary>
        [DisplayName("�ֻ���")]
        [Column("mobile", TypeName = "varchar(20)")]
        public string mobile { get; set; }       
    }
}