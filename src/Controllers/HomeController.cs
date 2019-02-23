using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
//using Models;
using Mvc.Models;
using Newtonsoft.Json;
using ArticleInfo = Mvc.Models.ArticleInfo;

namespace Mvc.Controllers
{
    public class HomeController : Controller
    {
        private Usercontext _context;

        public HomeController(Usercontext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {

            #region MyRegion
            //var model = new UserInfo
            //{
            //    name = "小张",
            //    address = "河南郑州",
            //    Age = 30,
            //    mobile = "15800000000"

            //};
            //_context.Add(model);
            //_context.SaveChanges();

            //var model = _context.UserInfo.Where(m => m.Id == 1).FirstOrDefault();
            //model.name = model.name+"1";
            //_context.SaveChanges(); 
            #endregion

            ViewBag.list=_context.ArticleInfo.ToList();
            //ViewBag.list = null;
            return View();
        }

        public JsonResult GetPage()
        {
            var list = _context.ArticleInfo.OrderByDescending(m => m.Id).ToList();
            return Json(new { data=list,total=list.Count});
        }
        public JsonResult GetPageNew(int page,int pagesize)
        {
            var list = _context.ArticleInfo.OrderByDescending(m => m.create_time).Skip((page - 1) * pagesize).Take(pagesize).ToList();
            return Json(new { data = list, total = list.Count });
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult PublishView()
        {
            return View();
        }

        public IActionResult Details(int id)
        {
            var model = _context.ArticleInfo.Find(id);
            model.viewCount = model.viewCount + 1;
            _context.SaveChanges();
            ViewBag.commentlist = _context.CommentInfo.Where(m => m.article_id == id).OrderByDescending(m=>m.create_time).ToList();
            ViewBag.model = model;
            return View();
        }

        public IActionResult Comment(int id)
        {
            var model = _context.ArticleInfo.Find(id);
            ViewBag.model = model;
            return View();
        }
        /// <summary>
        ///评论
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult SaveComment(int id,string comments)
        {
            var model = new CommentInfo();
            model.article_id = id;
            model.articleInfo = _context.ArticleInfo.Find(id);
            model.author = "";
            model.clickCount = 0;
            model.contents = comments;
            model.create_time = DateTime.Now;
            _context.Add(model);
            int result = _context.SaveChanges();
            if (result > 0)
            {
                return Json(new { success = true, message = "评论成功" });
            }
            else
            {
                return Json(new { success = false, message = "评论失败" });
            }

        }

        /// <summary>
        /// 点赞
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult SaveClick(int id)
        {
            var model = _context.ArticleInfo.Find(id);
            model.clickCount = model.clickCount + 1;            
            int result = _context.SaveChanges();
            if (result > 0)
            {
                return Json(new { success = true, message = "点赞成功" });
            }
            else
            {
                return Json(new { success = false, message = "点赞失败" });
            }

        }

        /// <summary>
        /// 点赞
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult SaveCommentClick(int id)
        {
            var model = _context.CommentInfo.Find(id);
            model.clickCount = model.clickCount + 1;
            int result = _context.SaveChanges();
            if (result > 0)
            {
                return Json(new { success = true, message = "点赞成功" });
            }
            else
            {
                return Json(new { success = false, message = "点赞失败" });
            }

        }

        [HttpPost]
        public JsonResult PublishView(string obj)
        {
            var model= JsonConvert.DeserializeObject<ArticleInfo>(obj);
            model.create_time = DateTime.Now;
            model.clickCount = 0;
            model.photo = "";
            _context.Add(model);
            int result= _context.SaveChanges();
            if(result>0)
            {
                return Json( new { success = true,message = "操作成功"});
            }
            else
            {
                return Json(new { success = false, message = "操作失败" });
            }
           
        }

        /// <summary>
        /// 留言
        /// </summary>
        /// <returns></returns>
        public IActionResult Message()
        {           
            return View();
        }
        /// <summary>
        /// 保存留言
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult SaveMessage(string content)
        {
            var model = new MessageInfo();
            model.create_time = DateTime.Now;
            model.author = "";            
            model.clickCount = 0;
            model.contents = content;
            _context.Add(model);
            int result = _context.SaveChanges();
            if (result > 0)
            {
                return Json(new { success = true, message = "操作成功" });
            }
            else
            {
                return Json(new { success = false, message = "操作失败" });
            }

        }

        public JsonResult GetMessagePageList(int page, int pagesize)
        {
            int count = 0;
            var list = _context.MessageInfo.OrderByDescending(m => m.create_time).ToList();
            count = list.Count;
            list = list.Skip((page - 1) * pagesize).Take(pagesize).ToList();
            return Json(new { data = list, total = count });
        }
        public IActionResult Test()
        {
          
            return Content("开心每一天！！！");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new Models.ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
