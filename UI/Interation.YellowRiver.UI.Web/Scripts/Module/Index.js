var index =
{
    ready: function ()
    {
        this.animation.ready();
    },
    animation:
    {
        ready: function ()
        {
            var _this = this;

            this.movie = $("div.movie");
            this.locate = this.movie.find("div.locate");
            this.film = this.locate.find("div.film");
            this.frames = this.film.find("div.frame");
            this.width = this.locate.width();
            this.count = this.frames.length;

            this.locate.mouseover(function () { _this.pause(); });
            this.locate.mouseout(function () { _this.play(); });

            if (this.count == 0) { return; }

            var select = $("<ul></ul>").addClass("select").appendTo(this.locate);

            for (var i = 0; i < this.count; i++)
            {
                var a = $("<a></a>").attr({ href: "javascript:void(0);" }).mouseover(function () { _this._select(this); }).text(i + 1);
                $("<li></li>").append(a).appendTo(select);
            }

            this.handlers = select.find("a");
            this._select(this.handlers.eq(0));
            this.play();
        },
        play: function ()
        {
            var _this = this;
            if (this.timer != null) { clearTimeout(this.timer); }
            this.timer = setInterval(function () { _this._next(); }, 4000);
        },
        pause: function ()
        {
            clearTimeout(this.timer);
        },
        _next: function ()
        {
            var index = this.currentIndex + 1 >= this.count ? 0 : this.currentIndex + 1;
            this._select(this.handlers.eq(index));
        },
        _select: function (sender)
        {
            this.handlers.removeClass("current");

            sender = $(sender).addClass("current");
            this.currentIndex = parseInt(sender.text()) - 1;
            this.film.animate({ "margin-left": -this.currentIndex * this.width });
        }
    }
};