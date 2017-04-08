function setMenuClass(css) {
    $(css).click(function () {
        $(this).toggleClass("on").siblings().removeClass("on");
    });
}
//设置左侧菜单样式，传入父级CSS名称
function setMenuClass2(contaniorCss) {
    $.each($(contaniorCss + " li"), function (k, v) {
        var a = $(v).find("a");
        if (a.attr("checklg") != "") {
            if (location.href.indexOf(a.attr("checklg")) >= 0) {

                $(contaniorCss + " li a").removeClass("on");
                a.addClass("on");
            } else {
                a.removeClass("on");
            }
        }
    });
}
//首页导航
function setMenuClass3(contaniorCss) {
    $.each($(contaniorCss + " li"), function (k, v) {
        var a = $(v).find("a");
        if (a.attr("href") != "") {
            if (location.href.indexOf(a.attr("href")) >= 0) {
                //$(contaniorCss + " li a").removeClass("on");
                $(a).parent().removeClass("on");
                $(a).parent().addClass("on");
                $(a).parent().siblings().removeClass("on");
            } else {
                $(a).parent().removeClass("on");
            }
        }
    });
}
function getVersionbylogin() {
    switch ($.browser.version) {
        case "6.0":
        case "7.0":
        case "8.0":
        case "9.0":
            return true;
        default:
            return false;
    }
}
$(function () {
    $("#loginbtn_new,a#login").live("click", function () {
        user.isLogin(function (islogin) {
            if (!islogin) {
                if (!getVersionbylogin()) {
                    //$("#loginLay").addClass("dialogAniCore dialogAnimate5");
                    var timer = setInterval(function () {
                        if (!$("#loginLay").hasClass("dialogAnimate5")) { $("#loginLay").removeClass("dialogAniCore"); clearInterval(timer); }
                        $("#loginLay").removeClass("dialogAnimate5");

                    }, 100);
                }
                loginDialog.Show();
                $("#userName").focus();
            }
        });
        return false;
    });
    $("#header_show_money").click(function () {
        var usermoney = $("#header_user_money");
        if (usermoney.attr("data-sh") == 0) {
            $("#header_show_money").html("隐藏余额");
            usermoney.html($("#header_user_money_hidden").val()).attr("data-sh", 1);
        } else {
            $("#header_show_money").html("显示余额");
            usermoney.html("*****").attr("data-sh", 0);
        }
    });
    $("li.dropdown-nav").hover(function () {
        var self = $(this);
        self.addClass(self.attr("data-cls")).find("ul").show();
    }, function () {
        var self = $(this);
        self.removeClass(self.attr("data-cls")).find("ul").hide();
    });
    $('.lottery-list-box > .allGames[data-type=3]').hover(function () {
        var eq = $('.lottery-list-box > .allGames').index(this);
        var type = $(this).data('type');
        if (eq != 2) {
            $(this).addClass('allGames-on');
        } else {
            $(this).addClass('allGames-on').css('borderBottom', 'solid 1px #fff');
        }

        $('.lotterys-list-hd').addClass('lotterys-list-hd-border1');
        $(this).children('.moreGames').css('display', 'block');
        $('#open-btn-' + type).hide();
        $(this).find('.line-fff').show();

    }, function () {
        var type = $(this).data('type');
        $(this).removeClass('allGames-on');
        $(this).children('.moreGames').css('display', 'none');
        $('.lotterys-list-hd').removeClass('lotterys-list-hd-border1');
        $('#open-btn-' + type).show();
        $(this).find('.line-fff').hide();
    });
    $("#login-ul li:last,.site_link li:eq(2)").die().live({
        mouseenter: function () {
            $(this).find(".tips_hd").addClass("hover").end().find(".tips_bd").show();
        },
        mouseleave: function () {
            $(this).find(".tips_hd").removeClass("hover").end().find(".tips_bd").hide();
        }
    });
    $("#account_li_tag").die().live({
        mouseenter: function () {
            $(this).find(".tips_hd").addClass("hover").end().find(".tips_bd").show(function () {
                var a = $(this).find(".growthcss");
                var b = $(this).find(".accountcss");
                if (a.width() == 0) {
                    a.animate({ width: "0" }, 500, function () {
                        a.animate({ width: "" + a.attr("b") + "%" }, 800);
                    });
                }
                if (b.width() == 0) {
                    b.animate({ width: "0" }, 500, function () {
                        b.animate({ width: "" + b.attr("b") + "%" }, 800);
                    });
                }
            });
        },
        mouseleave: function () {
            $(this).find(".tips_hd").removeClass("hover").end().find(".tips_bd").hide();
        }
    });


    $(".nav_left").hover(function () {

        $(this).find(".navtoptitle").addClass("navtoptitle-on").end().find(".lotterys").show();
    }, function () {
        $(this).find(".navtoptitle").removeClass("navtoptitle-on").end().find(".lotterys").hide();
    });
    $("#link13").die().live("click", function () {
        if ($(this).is(":visible")) {
            $(this).hide().prev().children("li").slice(0, 2).show();
        }
    });
    $("#link10").die().live("click", function () {
        if ($(this).is(":visible")) {
            var parent = $(this).parent();
            parent.removeAttr("style").prev().removeAttr("style");
            $("#link13").show();
        }
    });
    $("#rbalc").die().live("click", function () {
        $("#header_user_money").text("加载中...")
        $.ajax({
            contentType: "",
            data: {},
            dataType: "json",
            url: "/user/refreshub?r=" + Math.random().toFixed(5),
            type: "GET",
            error: function () {
                alert("error");
            },
            success: function (responseData) {
                if (responseData.fb > 0) {
                    user.info.balance = responseData.fb;
                    $("#header_user_money_hidden").val(user.info.balance > 10000 ? (user.info.balance / 10000).toFixed("2") + "万" : user.info.balance.toFixed(2));
                }
                if (responseData.rb > 0) {
                    user.info.rbbalance = responseData.rb;
                    $("#hbmoney").html(user.info.rbbalance.toFixed(2) + "元");
                }

                var usermoney = $("#header_user_money");
                usermoney.html($("#header_user_money_hidden").val()).attr("data-sh", 1);
                $("#header_show_money").html("隐藏余额");
            },
            timeout: 60 * 1000
        });
    });
    $("#info_detail a[href]").click(function () {
        user.isLogin(function (islogin) {
            if (!islogin) {
                loginDialog.Show();
                $("#userName").focus();
                user.LoginCallBack = function () {
                    window.open($(this).attr("data-type"));
                };
            }
        });
    });
    $("a[checklg]").die().live("click", function () {
        var _self = $(this);
        user.isLogin(function (islogin) {
            if (!islogin) {
                loginDialog.Show();
                $("#userName").focus();
                user.LoginCallBack = function () {
                    window.location.href = _self.attr("checklg");
                };
            } else {
                window.location.href = _self.attr("checklg");
            }
        });
    });
});
