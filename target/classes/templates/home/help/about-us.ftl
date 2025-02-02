<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=990, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit">
    <title>帮助中心|大剧院_影剧在线选座购票平台</title>
    <meta name="keywords" content="大剧院影剧票,大剧院,大剧院影剧院,大剧院影票,大剧院影剧,影剧票，影剧"/>
    <meta name="description" content="大剧院是大剧院最大的影剧票在线选座平台，同时大剧院还提供影剧排期，剧院信息查询、大剧院本土影剧行业资讯等服务。看影剧，来大剧院影剧票选座"/>
    <#include "../common/head-css.ftl"/>
</head>
<body>
	<#include "../common/header.ftl"/>   
<div id="body" class="main">
<div class="wrapper-helpcenter fn-clear">
    <div class="menu-helpcenter">
    <#include "../common/help-menu.ftl"/>
</div>
    <div class="box-con">
        <h1>关于我们</h1>
        <div class="con">
            <h3>1、我们是大剧院省内独一无二的影票公司</h3>
            <p>
                大剧院影剧票是大剧院省首家也是唯一一家电子影票综合服务平台，致力于为广大消费者提供多家剧院线上影剧票销售服务。我们提供的全方位观影资讯，并实现与剧院剧厅座位实时同步，让消费者可以根据个人喜好自由选择剧院、场次、座位，透过简易的操作流程获取影票，节省现场排队购票时间。
            </p>
            <h3 class="pt30">2、我们将打造大剧院第一品牌</h3>
            <p>
                大剧院影剧票致力于覆盖大剧院省100个县市区的影剧院。是大剧院地区资源覆盖最广、用户服务最专业的影剧票订购网站，自成立至今已与万达、中影、世茂等十余家主流院线开展深度合作。大剧院影剧票通过自身强大的剧院影响力、权威的平台运营能力及优惠的独家价格优势竭力为会员提供最优质服务，并强势联合中国移动、中国联通、中国电信、各大银行等大型平台为各类知名企业的亿万会员提供影票资源。大剧院影剧票始终以不懈追求最佳用户体验为目标，本着为顾客提供最快捷、最满意的服务为宗旨，致力于打造大剧院地区影剧购票第一品牌。
            </p>
            <h3 class="pt30">3、选择我们,将为您提供最优服务</h3>
            <p>
                大剧院影剧票是您发放工会福利、开展文娱活动、作为员工奖励的最佳选择，我们将根据各企业、单位具体需求，为您提供最优方案，便于丰富党员、干部职工的精神文化生活。我们秉承“方便、快捷”的服务理念，为用户提供最优质的服务。
            </p>
        </div>
    </div>
</div>
</div>
<#include "../common/footer-js.ftl"/> 
<#include "../common/footer.ftl"/> 
<#include "../common/login-dialog.ftl"/>
<script type="text/javascript">
    $(function () {
        $(".menu-helpcenter li a").each(function () {
            if ($(this).attr("data-i") == "index") {
                $(this).parent().addClass("act");
            }
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        var url = window.location.href;
        var strs = url.split("#");
        $(".wrapper-helpcenter .help-aq li a:[name=" + strs[1] + "]").parent().parent().siblings().removeClass("act pb10").end().addClass("act pb10");
        $(".info-help .help-nav li a").click(function () {
            var name = $(this).attr("href").split("#")[1];
            $(".wrapper-helpcenter .help-aq li a:[name=" + name + "]").parent().parent().siblings().removeClass("act pb10").end().addClass("act pb10");
        });
        $(".wrapper-helpcenter .help-aq li").click(function () {
            if (!$(this).hasClass("act")) {
                $(this).siblings().removeClass("act pb10").end().addClass("act pb10");
            }
        });
    });
</script>
</body>
</html>