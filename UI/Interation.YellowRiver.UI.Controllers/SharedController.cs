using System.Web.Mvc;
using Interation.YellowRiver.UI.ViewModel;

namespace Interation.YellowRiver.UI.Controllers
{
    public class SharedController : BaseController
    {
        public ActionResult Pager(int pageIndex, int pageCount, string ajaxHandler)
        {
            if (pageCount <= 1)
            {
                return new EmptyResult();
            }

            if (pageIndex < 1) { pageIndex = 1; }
            if (pageIndex > pageCount) { pageIndex = pageCount; }

            var count = 8;
            var startIndex = pageIndex > count ? ((pageIndex - 1) / count * count + 1) : 1;
            var endIndex = startIndex + count - 1 > pageCount ? pageCount : startIndex + count - 1;

            var pagerViewModel = new PagerViewModel
            {
                StartIndex = startIndex,
                EndIndex = endIndex,
                PageIndex = pageIndex,
                PageCount = pageCount,
                ShowPreLink = startIndex > 1,
                ShowEndLink = endIndex < pageCount,
                AjaxHandler = ajaxHandler
            };

            return View(pagerViewModel);
        }
    }
}
