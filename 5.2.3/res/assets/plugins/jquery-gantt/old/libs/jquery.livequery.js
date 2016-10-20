/* Copyright (c) 2007 Brandon Aaron (brandon.aaron@gmail.com || http://brandonaaron.net)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) 
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Version: 1.0.2
 * Requires jQuery 1.1.3+
 * Docs: http://docs.jquery.com/Plugins/livequery
 */
(function ($) {
    $.extend($.fn, {livequery: function (type, fn, fn2) {
        var self = this, q;
        if ($.isFunction(type))fn2 = fn, fn = type, type = undefined;
        $.each($.livequery.queries, function (i, query) {
            if (self.selector == query.selector && self.context == query.context && type == query.type && (!fn || fn.$lqguid == query.fn.$lqguid) && (!fn2 || fn2.$lqguid == query.fn2.$lqguid))return(q = query) && false;
        });
        q = q || new $.livequery(this.selector, this.context, type, fn, fn2);
        q.stopped = false;
        $.livequery.run(q.id);
        return this;
    }, expire: function (type, fn, fn2) {
        var self = this;
        if ($.isFunction(type))fn2 = fn, fn = type, type = undefined;
        $.each($.livequery.queries, function (i, query) {
            if (self.selector == query.selector && self.context == query.context && (!type || type == query.type) && (!fn || fn.$lqguid == query.fn.$lqguid) && (!fn2 || fn2.$lqguid == query.fn2.$lqguid) && !this.stopped)$.livequery.stop(query.id);
        });
        return this;
    }});
    $.livequery = function (selector, context, type, fn, fn2) {
        this.selector = selector;
        this.context = context || document;
        this.type = type;
        this.fn = fn;
        this.fn2 = fn2;
        this.elements = [];
        this.stopped = false;
        this.id = $.livequery.queries.push(this) - 1;
        fn.$lqguid = fn.$lqguid || $.livequery.guid++;
        if (fn2)fn2.$lqguid = fn2.$lqguid || $.livequery.guid++;
        return this;
    };
    $.livequery.prototype = {stop: function () {
        var query = this;
        if (this.type)this.elements.unbind(this.type, this.fn); else if (this.fn2)this.elements.each(function (i, el) {
            query.fn2.apply(el);
        });
        this.elements = [];
        this.stopped = true;
    }, run: function () {
        if (this.stopped)return;
        var query = this;
        var oEls = this.elements, els = $(this.selector, this.context), nEls = els.not(oEls);
        this.elements = els;
        if (this.type) {
            nEls.bind(this.type, this.fn);
            if (oEls.length > 0)$.each(oEls, function (i, el) {
                if ($.inArray(el, els) < 0)$.event.remove(el, query.type, query.fn);
            });
        } else {
            nEls.each(function () {
                query.fn.apply(this);
            });
            if (this.fn2 && oEls.length > 0)$.each(oEls, function (i, el) {
                if ($.inArray(el, els) < 0)query.fn2.apply(el);
            });
        }
    }};
    $.extend($.livequery, {guid: 0, queries: [], queue: [], running: false, timeout: null, checkQueue: function () {
        if ($.livequery.running && $.livequery.queue.length) {
            var length = $.livequery.queue.length;
            while (length--)$.livequery.queries[$.livequery.queue.shift()].run();
        }
    }, pause: function () {
        $.livequery.running = false;
    }, play: function () {
        $.livequery.running = true;
        $.livequery.run();
    }, registerPlugin: function () {
        $.each(arguments, function (i, n) {
            if (!$.fn[n])return;
            var old = $.fn[n];
            $.fn[n] = function () {
                var r = old.apply(this, arguments);
                $.livequery.run();
                return r;
            }
        });
    }, run: function (id) {
        if (id != undefined) {
            if ($.inArray(id, $.livequery.queue) < 0)$.livequery.queue.push(id);
        } else
            $.each($.livequery.queries, function (id) {
                if ($.inArray(id, $.livequery.queue) < 0)$.livequery.queue.push(id);
            });
        if ($.livequery.timeout)clearTimeout($.livequery.timeout);
        $.livequery.timeout = setTimeout($.livequery.checkQueue, 20);
    }, stop: function (id) {
        if (id != undefined)$.livequery.queries[id].stop(); else
            $.each($.livequery.queries, function (id) {
                $.livequery.queries[id].stop();
            });
    }});
    $.livequery.registerPlugin('append', 'prepend', 'after', 'before', 'wrap', 'attr', 'removeAttr', 'addClass', 'removeClass', 'toggleClass', 'empty', 'remove');
    $(function () {
        $.livequery.play();
    });
    var init = $.prototype.init;
    $.prototype.init = function (a, c) {
        var r = init.apply(this, arguments);
        if (a && a.selector)r.context = a.context, r.selector = a.selector;
        if (typeof a == 'string')r.context = c || document, r.selector = a;
        return r;
    };
    $.prototype.init.prototype = $.prototype;
})(jQuery);