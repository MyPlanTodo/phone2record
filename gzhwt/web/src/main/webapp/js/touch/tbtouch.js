(function(b) {
    var a = window.TBTouch = {
        init: function() {
            this.hideScrollBar()
        },
        hideScrollBar: function() {
            b(window).bind("load", 
            function() {
                if (b("#J_Nav").length > 0) {
                    setTimeout(scrollTo, 0, 0, 25)
                } else {
                    setTimeout(scrollTo, 0, 0, 1)
                }
            })
        },
        deviceDetect: function(d) {
            var e = {
                device: "android"
            };
            if (d) {
                b.extend(e, d)
            }
            var c = navigator.userAgent.toLowerCase();
            if (c.search(e.device) > -1) {
                return true
            } else {
                return false
            }
        },
        orient: function() {
            var c = "onorientationchange" in window,
            d = c ? "orientationchange": "resize";
            b(window).bind(d, 
            function() {
                switch (window.orientation) {
                case 0:
                case 180:
                    b("body").removeClass("landscape");
                    break;
                case 90:
                case - 90: b("body").addClass("landscape");
                    break
                }
                typeof window.DeviceOrientationEvent != "undefined" ? a.tabfix() : setTimeout(function() {
                    a.tabfix()
                },
                10)
            });
            if (window.orientation != 0) {
                b("body").addClass("landscape")
            }
        },
        tabfix: function() {
            var e = b("head").find("style") && b("head").find("style").hasClass("tabfix");
            var f = "";
            var c = false;
            var d = Math.floor(b(".common-tab li.cur").width() / 2) - 8;
            b("body").hasClass("landscape") ? c = true: c;
            e ? f: f += '<style type="text/css" class="tabfix">';
            if (c) {
                f += "body.landscape .common-tab li.cur:before";
                f += " {left:" + d + "px}";
                f += "body.landscape .common-tab li.cur:after";
                f += " {left:" + (d + 1) + "px}"
            } else {
                f += ".common-tab li.cur:before";
                f += " {left:" + d + "px}";
                f += ".common-tab li.cur:after";
                f += " {left:" + (d + 1) + "px}"
            }
            e ? f: f += "</style>";
            e ? b("style.tabfix").html(f) : b("head").append(f)
        },
        bread: function() {
            return {
                init: function() {
                    this.ellips()
                },
                ellips: function() {
                    b("#J_BreadEll a").click(function() {
                        b.maskRender({
                            popup: "#J_Bread_Popup"
                        });
                        return false
                    })
                }
            }
        } (),
        pagination: function() {
            if (parseInt(b("#J_Status .sum").text()) > 1) {
                b("#J_Status").unbind("click").bind("click", 
                function() {
                    var l = function() {
                        b(".pagination").removeClass("open");
                        b(".pagination").addClass("close")
                    };
                    var c = "onorientationchange" in window,
                    h = c ? "orientationchange": "resize";
                    b(window).bind(h, 
                    function() {
                        l()
                    });
                    document.body.addEventListener("touchstart", 
                    function(o) {
                        if (!b(o.target).parents().hasClass("pagination") && !b(o.target).hasClass("pagination")) {
                            l()
                        }
                    },
                    false);
                    if (b(".pagination").hasClass("open")) {
                        l()
                    } else {
                        b(".pagination").removeClass("close");
                        b(".pagination").addClass("open")
                    }
                    var k = parseInt(b("#J_Status .sum").text());
                    var m = parseInt(b("#J_Status .cur").text());
                    var n = parseInt(b("#J_Slider .bar").outerWidth());
                    var f = parseInt(b("#J_Slider .curbar").outerWidth());
                    var j = parseInt(b("#J_Slider .knob").outerWidth());
                    var e = [0, n - j];
                    var d = Math.ceil(e[1] * m / k + 10);
                    var g = function(o) {
                        b("#J_Slider .knob").css("left", o);
                        b("#J_Slider .curbar").css("width", o)
                    };
                    g(d);
                    b("#J_Slider .knob")[0].addEventListener("touchmove", 
                    function(p) {
                        p.preventDefault();
                        var r = p.changedTouches[0].clientX;
                        var q;
                        var o = Math.ceil(e[1] / k + 10);
                        if (r <= o) {
                            r = o
                        } else {
                            if (r >= n) {
                                r = e[1] + 10
                            }
                        }
                        q = Math.floor((r - 10) * k / e[1]);
                        b("#J_Status .cur").text(q);
                        g(r)
                    },
                    false);
                    b("#J_Slider .knob")[0].addEventListener("touchend", 
                    function(s) {
                        var r = parseInt(b("#J_Status .cur").text());
                        var o = b("#J_Pag_Param").val();
                        var q = b("#J_Pag").val() + "&" + o + "=" + r;
                        if (r != m) {
                            window.location.href = q
                        }
                    },
                    false)
                })
            }
        },
        popShift: function(c) {
            if (b(c).length > 0) {
                b(c).remove().clone(true).prependTo("body")
            }
        },
        searchtabs: function() {
            var c = b("#J_SearchTabs");
            var e = b("#J_SearchTabs").siblings(".tab-list");
            var d = b("#J_SKey").val();
            c.unbind("click").bind("click", 
            function() {
                c.addClass("none");
                e.removeClass("none")
            });
            e.find("li").unbind("click").bind("click", 
            function() {
                b("#J_ST").attr("name", (b(this).attr("i")));
                c.find("b").text(b(this).text());
                e.addClass("none");
                c.removeClass("none")
            });
            b("#J_SKey").bind("focus", 
            function() {
                if (b(this).val() == d) {
                    b(this).val("")
                }
                e.addClass("none");
                c.removeClass("none")
            });
            b("#J_SKey").bind("blur", 
            function() {
                if (b(this).val() == "") {
                    b(this).val(d)
                }
            })
        },
        shortcutTips: function(g) {
            g = g || "\u624b\u673a\u6dd8\u5b9d";
            if ("standalone" in navigator && (c("iphone.*safari") || c("ipod.*safari"))) {
                if (navigator.standalone || localStorage.showTips == "false") {
                    localStorage.showTips = "false";
                    return true
                }
                e();
                b(window).load(function() {
                    b(this).bind("touchstart", d).bind("scroll touchend", f)
                })
            }
            function c(h) {
                return navigator.userAgent.search(new RegExp(h, "i")) > -1
            }
            function e() {
                var h = ['<div class="shortcutTips">', '<div class="wrap">', '<span class="close">&times;</span>', '<p class="tips"> \u5feb\u901f\u8bbf\u95ee ', g, " ! </p>", '<p class="howto">\u8bf7\u6309\u4e0b\u65b9\u56fe\u6807\uff0c\u7136\u540e\u9009\u62e9 " \u6dfb\u52a0\u81f3\u4e3b\u5c4f\u5e55 " \u3002</p>', "</div>", "</div>"].join("");
                b("body").append(h);
                d();
                b(".shortcutTips .close").click(function() {
                    localStorage.showTips = "false";
                    d()
                })
            }
            function f() {
                if (localStorage.showTips != "false") {
                    b(".shortcutTips").css("top", window.innerHeight + window.scrollY - 80).hide().fadeIn(160)
                }
            }
            function d(h) {
                var j = b(".shortcutTips .wrap").offset();
                if (h && h.pageX > j.left && h.pageX < j.left + 230 && h.pageY > j.top && h.pageY < j.top + 66) {
                    return
                }
                b(".shortcutTips").hide()
            }
        }
    };
    a.init();
    b(function() {
        a.orient();
        a.tabfix();
        a.popShift(".popup");
        a.searchtabs()
    });
    a.header = {
        init: function() {
            this.popup();
            a.popShift(".header-panel");
            this.tap();
            this.app();
            this.msg()
        },
        popup: function() {
            b("#J_Search a").click(function() {
                b.maskRender({
                    popup: "#J_Search_Popup"
                });
                var c = "http://suggest.taobao.com/sug";
                b("#J_Search_Popup").autoComplete({
                    ajaxUrl: c,
                    wrapEl: ".suggest",
                    meatEl: ".suggest .meat",
                    close: ".suggest .close",
                    anim: true
                });
                return false
            })
        },
        tap: function() {
            b("nav.quick > ul > li.mytaobao > a").bind("click", 
            function(d) {
                d.stopPropagation();
                c(b(this))
            });
            b("nav.quick > ul > li.cart > a").bind("click", 
            function(d) {
                d.stopPropagation();
                c(b(this))
            });
            var c = function(d) {
                if (!d.parent().hasClass("cur")) {
                    d.parent().addClass("cur")
                }
            }
        },
        tab: function(c) {
            if (b(c).attr("data-bind") == "false") {
                b(c + " > a").bind("click", 
                function() {
                    var d = b(this);
                    d.parent().siblings().removeClass("cur");
                    if (b("#J_Nav").length > 0) {
                        b(c + "_Panel").css("top", "75px")
                    } else {
                        b(c + "_Panel").css("top", "50px")
                    }
                    b(".header-panel").slideUp();
                    if (d.parent().hasClass("cur")) {
                        d.parent().attr("data-autopush", "false");
                        b(c + "_Panel").slideUp(function() {
                            d.parent().removeClass("cur")
                        })
                    } else {
                        d.parent().attr("data-autopush", "true");
                        d.parent().addClass("cur");
                        b(c + "_Panel").slideDown(function() {
                            b(this).removeClass("none")
                        })
                    }
                    return false
                });
                b(".content").bind("click", 
                function() {
                    if (b("#J_Header_Msg").hasClass("cur")) {
                        b("#J_Header_Msg").attr("data-autopush", "false");
                        b(".header-panel").slideUp(function() {
                            b("nav.quick > ul > li").removeClass("cur")
                        })
                    }
                });
                b(c).attr("data-bind", "true")
            }
        },
        app: function() {
            this.tab("#J_Header_App")
        },
        msg: function() {
            if (b("#J_Header_Msg").hasClass("new")) {
                this.tab("#J_Header_Msg")
            }
            if (b("#J_Header_Msg").length == 0) {
                return false
            }
            var g = b("#J_Header_Msg").attr("data-url");
            if (g == undefined || g == "") {
                return false
            }
            var f = 0;
            var d = 5000;
            var c = parseInt(b("#J_Header_Msg").attr("data-cycle"));
            if (isNaN(c) == true || c == 0) {
                c = d
            }
            var e = window.setInterval(function() {
                b.ajax({
                    url: g,
                    type: "get",
                    dataType: "jsonp",
                    error: function(h, k, j) {
                        f++;
                        if (f > 2) {
                            clearInterval(e)
                        }
                    },
                    success: function(p) {
                        var q = p.result,
                        m = p.totalMsgCount,
                        h = p.wwMsgCout,
                        l = p.logisticsMsgCount,
                        o = p.taobaoRadioMsgCount;
                        var k = [h, l, o];
                        if (q) {
                            if (m > 0) {
                                var j = b("#J_Header_Msg > a").attr("href");
                                b("#J_Header_Msg > a").attr({
                                    href: "",
                                    "data-href": j
                                });
                                if (h == 0 && (l != 0 || o != 0)) {
                                    b("#J_Header_Msg").removeClass("ww")
                                } else {
                                    b("#J_Header_Msg").addClass("ww")
                                }
                                a.header.tab("#J_Header_Msg");
                                b("#J_Header_Msg").addClass("new").find("a i").text(m);
                                for (var n = 0; n < 3; n++) {
                                    if (k[n] > 0) {
                                        b("#J_Header_Msg_Panel li").eq(n).removeClass("none");
                                        b("#J_Header_Msg_Panel li").eq(n).find("em").text(k[n])
                                    } else {
                                        b("#J_Header_Msg_Panel li").eq(n).addClass("none")
                                    }
                                }
                            } else {
                                var j = b("#J_Header_Msg > a").attr("data-href");
                                b("#J_Header_Msg > a").attr({
                                    href: j,
                                    "data-href": ""
                                });
                                b("#J_Header_Msg > a").unbind("click");
                                b("#J_Header_Msg").attr("data-bind", "false").removeClass("new").removeClass("cur");
                                b("#J_Header_Msg_Panel li em").text("0");
                                b("#J_Header_Msg_Panel").slideUp()
                            }
                        }
                    }
                })
            },
            c)
        }
    };
    b.maskRender = function(d) {
        var e = {
            popup: ".popup",
            inner: ".fix",
            meat: ".meat",
            deflect: 59,
            hidebody: true,
            bindclose: true,
            totop: true
        };
        if (d) {
            b.extend(e, d)
        }
        var c = b(window).height() + 60;
        b(e.popup).css("min-height", c).removeClass("none").find(e.inner).show().end().find(e.inner).children(e.meat).css("min-height", c - e.deflect).end();
        if (e.bindclose) {
            b(e.popup).find(".operator .common-btn-small").click(function() {
                b(this).unbind("click").parents(e.inner).hide().parents(e.popup).addClass("none");
                if (e.hidebody) {
                    b(".content").removeClass("none")
                }
                if (b(this).attr("tagName") == "A") {
                    return false
                }
            })
        }
        if (e.hidebody) {
            b(".content").addClass("none")
        }
        if (e.totop) {
            setTimeout(scrollTo, 0, 0, 1)
        }
    };
    b.rand = function(d) {
        var f = {
            number: 5
        };
        if (d) {
            b.extend(f, d)
        }
        var c = "";
        for (var e = 0; e < f.number; e++) {
            c += Math.floor(Math.random() * 10).toString(10)
        }
        return parseInt(c)
    };
    b.fn.highLight = function(c) {
        var d = {
            multi: true,
            single: true,
            touch: false,
            el: "a",
            cl: "highlight",
            stopEv: true
        };
        if (c) {
            b.extend(d, c)
        }
        return b(this).each(function() {
            if (d.multi) {
                function e(f) {
                    if (d.single) {
                        b(f).siblings().removeClass(d.cl)
                    }
                    b(f).addClass(d.cl)
                }
                if (d.touch) {
                    b(this).find(d.el).bind("touchstart", 
                    function() {
                        e(this)
                    })
                }
                b(this).find(d.el).bind("click", 
                function() {
                    e(this)
                })
            } else {
                b(this).click(function() {
                    b(this).addClass(d.cl)
                })
            }
            if (d.stopEv) {
                b(this).find(d.el).click(function() {
                    return false
                })
            }
        })
    };
    b.fn.fixed = function(d) {
        var e = {
            bottom: 0
        };
        if (d) {
            b.extend(e, d)
        }
        var c = this;
        b(window).scroll(function(f) {
            return b(this).each(function() {
                var g = b(window).scrollTop() + document.documentElement.clientHeight - 85;
                b(c).css("top", g)
            })
        })
    };
    b.fn.drawer = function(d) {
        var e = {
            operator: ".operator a",
            shift: {
                avail: false,
                text: ["\u6536\u8d77", "\u5c55\u5f00"]
            },
            inner: ".meat",
            collapse: "collapse",
            expand: "expand",
            anim: true
        };
        if (d) {
            b.extend(e, d)
        }
        var c = this;
        return b(this).each(function() {
            var f = b(this);
            b(this).find(e.operator).click(function() {
                if (f.hasClass(e.collapse)) {
                    f.removeClass(e.collapse).addClass(e.expand);
                    if (e.anim) {
                        f.find(e.inner).slideDown("normal")
                    }
                    if (e.shift.avail) {
                        b(this).text(e.shift.text[0])
                    }
                } else {
                    f.removeClass(e.expand).addClass(e.collapse);
                    if (e.anim) {
                        f.find(e.inner).slideUp("normal")
                    }
                    if (e.shift.avail) {
                        b(this).text(e.shift.text[1])
                    }
                }
                return false
            })
        })
    };
    b.fn.scrollLayer = function(f) {
        var h = {
            direction: "X",
            wrapEl: ".wrap",
            touchEl: ".holder",
            childEl: "li",
            margin: 5,
            speed: 0.9,
            prevent: true
        };
        if (f) {
            b.extend(h, f)
        }
        var g = 0,
        d = 0,
        j = 0,
        e = 0;
        var c;
        var k = b(this).find(h.touchEl);
        return b(this).each(function() {
            var n = b(this).find(h.childEl);
            if (h.direction == "X") {
                for (var m = 0; m < n.size(); m++) {
                    g += n.eq(m).width() + h.margin * 2
                }
                k.width(g);
                j = b(this).find(h.wrapEl).width()
            } else {
                for (var m = 0; m < n.size(); m++) {
                    d += n.eq(m).height() + h.margin * 2
                }
                k.height(d);
                e = b(this).find(h.wrapEl).height()
            }
            if (h.prevent) {
                b(this).find("a").click(function() {
                    return false
                })
            }
            k[0].onmousedown = k[0].ontouchstart = l;
            function l(v) {
                var y = [k.position().left, k.position().top];
                var q = B(v);
                var r = new Date().getTime();
                var s = 10,
                z,
                t,
                o = 0;
                if (h.direction == "X") {
                    var u = -g + j + h.margin * 2
                } else {
                    var u = -d + e + h.margin * 2
                }
                var x = 0;
                clearInterval(c);
                k[0].ontouchmove = k[0].onmousemove = A;
                k[0].ontouchend = document.onmouseup = w;
                return false;
                function p() {
                    o += t * (s / 1000);
                    var C = z + o;
                    if (C > x || C < u) {
                        clearInterval(c);
                        return
                    }
                    if (h.direction == "X") {
                        k[0].style.left = C + "px"
                    } else {
                        k[0].style.top = C + "px"
                    }
                    t *= h.speed;
                    if (Math.abs(t) < 10) {
                        t = 0;
                        clearInterval(c)
                    }
                }
                function A(E) {
                    var D = B(E);
                    if (h.direction == "X") {
                        var C = (D - q) + y[0]
                    } else {
                        var C = (D - q) + y[1]
                    }
                    if (C <= x && C >= u) {
                        if (h.direction == "X") {
                            k[0].style.left = C + "px"
                        } else {
                            k[0].style.top = C + "px"
                        }
                    }
                }
                function w(F) {
                    var C = B(F);
                    if (h.direction == "X") {
                        z = k[0].offsetLeft
                    } else {
                        z = k[0].offsetTop
                    }
                    var D = new Date().getTime();
                    var G = C - q;
                    var E = D - r;
                    t = G / (E / 1000);
                    c = setInterval(p, s);
                    k[0].ontouchmove = k[0].ontouchend = k[0].onmousemove = document.onmouseup = null
                }
                function B(D) {
                    var C = 0;
                    if (D.changedTouches) {
                        if (h.direction == "X") {
                            C = D.changedTouches[0].clientX
                        } else {
                            C = D.changedTouches[0].clientY
                        }
                    } else {
                        if (h.direction == "X") {
                            C = D.clientX
                        } else {
                            C = D.clientY
                        }
                    }
                    return C
                }
            }
        })
    };
    b.fn.autoComplete = function(d) {
        var e = {
            ajaxUrl: "http://m.taobao.com",
            operator: ".txt",
            wrapEl: ".wrap",
            meatEl: ".meat",
            childEl: "li",
            submit: ".btn",
            close: ".close",
            collapse: "collapse",
            expand: "expand",
            delay: 300,
            anim: true,
            isUseKey: true
        };
        if (d) {
            b.extend(e, d)
        }
        var c = this;
        return b(this).each(function() {
            var j = b(this);
            var h = b(this).find(e.operator);
            h.attr("autocomplete", "off");
            h.focus(function() {
                if (b(this).val() == "") {
                    b(this).val("")
                }
            });
            h[0].onkeyup = h[0].oninput = g;
            function g(q) {
                var q = q || window.event;
                var p;
                p = b(this).val().replace(/(^\s+)|(\s+$)/g, "");
                if (p.length == 0) {
                    j.find(e.wrapEl).slideUp("normal");
                    return
                }
                if (q.keyCode == 13 || q.keyCode == 32) {
                    return
                }
                if (!this.onceScroll) {
                    k()
                }
                this.onceScroll = true;
                var n = j.find("#J_ST"),
                o = n.attr("name");
                if (n.length > 0 && o == "event_submit_do_search_shop") {
                    j.find(e.wrapEl).slideUp("normal");
                    return false
                }
                f(p)
            }
            function f(n) {
                var o = e.ajaxUrl;
                b.ajax({
                    url: o,
                    type: "GET",
                    dataType: "jsonp",
                    data: "code=utf-8&extras=1&q=" + n,
                    error: function() {
                        return false
                    },
                    success: function(p) {
                        l(p)
                    }
                })
            }
            function l(p) {
                if (p.result != false) {
                    if (e.isUseKey) {
                        j.find("#J_IsUseSearchSuggest").val("")
                    }
                    var o = "";
                    var n = p.result.length > 5 ? 5: p.result.length;
                    for (i = 0; i < n; i++) {
                        q(i)
                    }
                    j.find(e.meatEl).html(o);
                    m()
                } else {
                    j.find(e.wrapEl).slideUp("normal");
                    return
                }
                function q(r) {
                    o += '<li key="' + p.result[i][0] + '">' + p.result[i][0] + "</li>"
                }
            }
            function m() {
                var n = null;
                n = setTimeout(function() {
                    if (!e.anim) {
                        j.removeClass(e.collapse).addClass(e.expand)
                    } else {
                        j.find(e.wrapEl).slideDown("normal").show()
                    }
                },
                e.delay);
                j.find(e.close).unbind("click");
                j.find(e.childEl).unbind("click");
                j.find(e.close).click(function() {
                    var o = 0;
                    var p = null;
                    p = setTimeout(function() {
                        if (!e.anim) {
                            j.removeClass(e.expand).addClass(e.collapse)
                        } else {
                            j.find(e.wrapEl).slideUp("normal")
                        }
                    },
                    e.delay);
                    o = b(window).scrollTop() - h.offset().top;
                    if (o > 0) {
                        k()
                    }
                });
                j.find(e.childEl).click(function() {
                    if (e.isUseKey) {
                        j.find("#J_IsUseSearchSuggest").val(b("#J_StatisticsKeyword").val())
                    }
                    var o = b(this).attr("key");
                    j.find(e.operator).val(o);
                    j.find(e.submit).click()
                })
            }
            function k() {
                var n = h.offset().top;
                setTimeout(function() {
                    window.scrollTo(0, n)
                },
                1000)
            }
        })
    };
    b.fn.slideLayer_v2 = function(c) {
        var d = {
            direction: "X",
            wrapEl: ".wrap",
            slideEl: ".holder",
            childEl: "li",
            prev: ".prev",
            next: ".next",
            disable: "disabled",
            counter: ".counter",
            countStyle: "dot",
            effect: "both",
            current: 1,
            timer: 300,
            autoplay: 1,
            cycle: 1
        };
        if (c) {
            b.extend(d, c)
        }
        return b(this).each(function() {
            var q = b(this);
            var l = d.current;
            var u = 0,
            r = 0,
            h = 0,
            v = 0;
            var x = Math.ceil(q.find(d.childEl).length);
            var n = q.find(d.childEl);
            var o = q.find(d.slideEl);
            h = q.find(d.wrapEl).width();
            v = q.find(d.wrapEl).height();
            if (d.direction == "X") {
                for (var w = 0; w < n.size(); w++) {
                    u += n.eq(w).width()
                }
                o.width(u)
            } else {
                for (var w = 0; w < n.size(); w++) {
                    r += n.eq(w).height()
                }
                o.height(r)
            }
            if (d.direction == "X") {
                q.find(d.slideEl).css("left", -(h * (l - 1)))
            } else {
                q.find(d.slideEl).css("top", -(v * (l - 1)))
            }
            j();
            switch (d.effect) {
            case "slide":
                e();
                break;
            case "scroll":
                g();
                break;
            case "both":
                e();
                g()
            }
            function g() {
                if (d.direction == "X") {
                    var A = -u + h
                } else {
                    var A = -r + v
                }
                var y = 0;
                o[0].onmousedown = o[0].ontouchstart = z;
                function z(G) {
                    var F,
                    D,
                    C;
                    if (d.autoplay == 1) {
                        k.process()
                    }
                    var I = [o.position().left, o.position().top];
                    F = B(G);
                    o[0].ontouchmove = o[0].onmousemove = E;
                    function E(L) {
                        D = B(L);
                        if (d.direction == "X") {
                            var J = (D[0] - F[0]) + I[0];
                            if (Math.abs(D[0] - F[0]) - Math.abs(D[1] - F[1]) > 0) {
                                L.preventDefault();
                                K();
                                o[0].ontouchend = document.onmouseup = H
                            } else {
                                return
                            }
                        } else {
                            var J = (D[1] - F[1]) + I[1];
                            L.preventDefault();
                            K();
                            o[0].ontouchend = document.onmouseup = H
                        }
                        function K() {
                            if (J <= y && J >= A) {
                                if (d.direction == "X") {
                                    o[0].style.left = J + "px"
                                } else {
                                    o[0].style.top = J + "px"
                                }
                            } else {}
                        }
                    }
                    function H(L) {
                        var M,
                        J,
                        K = B(L);
                        if (d.autoplay == 1) {
                            k.process()
                        }
                        if (d.direction == "X") {
                            M = K[0] - F[0];
                            N(L)
                        } else {
                            M = K[1] - F[1];
                            N(L)
                        }
                        function N(O) {
                            if (M < -5) {
                                f.process(m)
                            } else {
                                if (M > 5) {
                                    f.process(p)
                                }
                            }
                        }
                        j();
                        o[0].ontouchmove = o[0].ontouchend = o[0].onmousemove = document.onmouseup = null
                    }
                }
                function B(D) {
                    var C = new Array();
                    C[0] = D.changedTouches ? D.changedTouches[0].clientX: D.clientX;
                    C[1] = D.changedTouches ? D.changedTouches[0].clientY: D.clientY;
                    return C
                }
            }
            var p = function() {
                if (d.autoplay == 1) {
                    k.process()
                }
                if (d.cycle == 1) {
                    if (l != 1) {
                        s();
                        return false
                    } else {
                        s();
                        n.eq(x - 1).css("left", -(h * x));
                        n.eq(0).css("left", 0);
                        return false
                    }
                } else {
                    if (l != 1) {
                        s();
                        return false
                    }
                }
            };
            var m = function() {
                if (d.autoplay == 1) {
                    k.process()
                }
                if (d.cycle == 1) {
                    if (l != x) {
                        t();
                        return false
                    } else {
                        t();
                        n.eq(0).css("left", h * x);
                        q.find(d.wrapEl).css("left", 0);
                        return false
                    }
                } else {
                    if (l != x) {
                        t();
                        return false
                    }
                }
            };
            var f = {
                timerid: null,
                action: function(y) {
                    y()
                },
                process: function(y) {
                    clearTimeout(f.timerid);
                    f.timerid = setTimeout(function() {
                        f.action(y)
                    },
                    d.timer)
                }
            };
            function e() {
                q.find(d.prev).click(function(y) {
                    if (d.cycle == 1) {
                        f.process(p)
                    } else {
                        if (l != 1) {
                            f.process(p)
                        }
                    }
                });
                q.find(d.next).click(function(y) {
                    if (d.cycle == 1) {
                        f.process(m)
                    } else {
                        if (l != x) {
                            f.process(m)
                        }
                    }
                })
            }
            function s() {
                if (d.direction == "X") {
                    h = q.find(d.wrapEl).width();
                    q.find(d.slideEl).animate({
                        left: -(h * (l - 2))
                    },
                    d.timer, 
                    function() {
                        j();
                        q.find(d.wrapEl).find("ul").css("left", -(h * (l - 1)));
                        n.eq(x - 1).css("left", 0)
                    })
                } else {
                    q.find(d.slideEl).animate({
                        top: -(v * (l - 2))
                    },
                    d.timer, 
                    function() {})
                }
                l == 1 ? l = x: l--
            }
            function t() {
                if (d.direction == "X") {
                    h = q.find(d.wrapEl).width();
                    q.find(d.slideEl).animate({
                        left: -(h * l)
                    },
                    d.timer, 
                    function() {
                        j();
                        q.find(d.wrapEl).find("ul").css("left", -(h * (l - 1)));
                        n.eq(0).css("left", 0)
                    })
                } else {
                    q.find(d.slideEl).animate({
                        top: -(v * l)
                    },
                    d.timer)
                }
                l == x ? l = 1: l++
            }
            function j() {
                var A = "",
                y = q.find(d.counter);
                if (y.length > 0) {
                    if (d.countStyle == "dot") {
                        var z = 0;
                        for (z = 1; z <= x; z++) {
                            A += "<li>" + z + "</li>"
                        }
                        y.find("ul").html(A);
                        y.find("li").eq(l - 1).addClass("cur").siblings().removeClass("cur")
                    } else {
                        A = '<span class="cur">' + l + '</span> / <span class="total">' + x + "</span>";
                        y.html(A)
                    }
                    n.eq(l - 1).addClass("cur").siblings().removeClass("cur")
                }
                if (d.cycle != 1) {
                    var C = q.find(d.prev),
                    B = q.find(d.next);
                    C.removeClass(d.disable);
                    B.removeClass(d.disable);
                    if (l == 1) {
                        C.addClass(d.disable)
                    } else {
                        if (l == x) {
                            B.addClass(d.disable)
                        }
                    }
                }
            }
            var k = {
                timeoutId: null,
                performProcessing: function() {
                    m()
                },
                process: function() {
                    clearInterval(k.timeoutId);
                    k.timeoutId = setInterval(function() {
                        k.performProcessing()
                    },
                    5000)
                },
                dispose: function() {
                    clearInterval(k.timeoutId);
                    return
                }
            };
            if (d.autoplay == 1) {
                k.process()
            }
        })
    }
})(jQuery);