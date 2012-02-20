namespace Interation.YellowRiver.UI.ViewModel
{
    public class PagerViewModel
    {
        public int PageIndex { get; set; }
        public int PageCount { get; set; }
        public int StartIndex { get; set; }
        public int EndIndex { get; set; }
        public bool ShowPreLink { get; set; }
        public bool ShowEndLink { get; set; }
        public string AjaxHandler { get; set; }
    }
}
