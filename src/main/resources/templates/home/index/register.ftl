<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=990, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit">
    <title>大剧院_影剧在线选座购票平台</title>
    <meta name="keywords" content="大剧院影剧票,大剧院,大剧院影剧院,大剧院影票,大剧院影剧,影剧票，影剧"/>
    <meta name="description" content="大剧院是大剧院最大的影剧票在线选座平台，同时大剧院还提供影剧排期，剧院信息查询、大剧院本土影剧行业资讯等服务。看影剧，来大剧院影剧票选座"/>
    <#include "../common/head-css.ftl"/>
</head>
<body>
<#include "../common/header.ftl"/>   
<div id="body" class="main">
<div class="wrapper-register fn-clear">
    <div class="box-register">
        <h2>免费注册大剧院会员</h2>

        <p class="fn-clear box-tel">
            <input name="tel" class="tel fn-left" type="text" placeholder="请输入手机号" maxlength="11" style="width: 300px;" />
            <span class="error">请输入正确的手机号</span>
        </p>
        <p class="ipt">
            <input name="password" class="pwd bgpwd2" type="password" />
            <span class="error">请输入6-16位密码仅含字母与数字</span>
        </p>

        <p class="fn-clear"><span class="btn do-register">立即注册</span></p>
        <p class="box-des fn-clear">
            <label class="cor999"><input type="checkbox" checked="checked" class="fn-left agreement" /><span class="fn-left">阅读并接受大剧院影剧票<a href="/help/serviceterms.html" target="_blank">《用户协议》</a></span></label>
            <span class="error">请接受大剧院影剧票《用户协议》</span>
        </p>
    </div>
    <div class="loginmenthod-register">
        <p>已有账户，点此登录</p>
        <p class="fn-clear box-btn"><span class="btn do-login">立即登录</span></p>
        
    </div>
</div>
</div>
<#include "../common/footer-js.ftl"/> 
<#include "../common/footer.ftl"/> 
<#include "../common/login-dialog.ftl"/> 
<script type="text/javascript">

        var $domTel = $(".wrapper-register .tel");
        var $domPwd = $(".wrapper-register .pwd");

        $(".wrapper-register .do-register").click(function () {

            var $this = $(this);
            var tel = $.trim($domTel.val());

            var pwd = $.trim($domPwd.val());
             if(tel.length!=11){
                 alert("请输入正确的手机号");
                 return;
             }
            if(pwd==''){
                alert("请输入密码");
                return;
            }
            alert(pwd);
            $.ajax({
                url: 'register',
                data: { mobile: tel, password: pwd },
                type: 'post',
                dataType: 'json',
                beforeSend: function () {
                    regflag = true;
                    $this.addClass("disable");
                },
                success: function (data) {
                    if (data.code == 0) {
                        regflag = true;
                        $this.removeClass("disable");
                        window.location = "/home/index/index";

                    } else {
                        regflag = false;
                        alert(data.msg);
                        $this.removeClass("disable");
                    }
                },
                error: function () {
                    regflag = false;
                    $this.removeClass("disable");
                    alert("注册失败,请检查您的手机是否可以访问网络");
                }
            });

        });
        $(".wrapper-register .do-login").click(function () {
            linkLogin ="/";
            if ("False".toLowerCase() != "true") {
                $(".boxLogin").overlay({ api: true }).load();
            }
        });
        $("#register-img-code-show img").on('click', function () {
        	$(this).attr("src", "/cpacha/generate_cpacha?vl=4&fs=25&w=128&h=45&method=home_register_img_code&v=" + Math.random());
    	});

</script>
</body>
</html>