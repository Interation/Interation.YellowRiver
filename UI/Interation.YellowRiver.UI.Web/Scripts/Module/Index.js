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

            if (this.count == 0) { return; }

            var select = $("<ul></ul>").addClass("select").appendTo(this.locate);

            for (var i = 0; i < this.count; i++)
            {
                var a = $("<a></a>").attr({ href: "javascript:void(0);" }).click(function () { _this._select(this); }).text(i + 1);
                $("<li></li>").append(a).appendTo(select);
            }

            this.start();
        },
        start: function ()
        {

        },
        pause: function ()
        {

        },
        _select: function (sender)
        {
            sender = $(sender);
            var index = parseInt(sender.text()) - 1;
            this.film.animate({ "margin-left": -index * this.width });
        }
    }
};