.class Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private loadSuccess:Z

.field final synthetic this$0:Lcom/toast/android/analytics/PromotionActivity;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/PromotionActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    return-void
.end method


# virtual methods
.method public isLoadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "PromotionActivity"

    const-string v1, "WebView : page loading finished"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "PromotionActivity"

    const-string v1, "WebView : page loading started"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PromotionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: Loading Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->loadSuccess:Z

    const-string v0, "<!doctype html><html lang=\"ko\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,target-densitydpi=medium-dpi\"><title>TOAST PROMOTION</title><style type=\"text/css\">/* Common */body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block}body,input,textarea,select,button,table{font-size:12px;line-height:12px}body{font-family:\"\ub098\ub214\ubc14\ub978\uace0\ub515\",NanumBarunGothic,\"\uad74\ub9bc\",Gulim,Sans-serif;font-size:12px;-webkit-text-size-adjust:none;letter-spacing:-1px}img,fieldset{border:0;vertical-align:top}button{margin:0;padding:0;border:0;background-color:transparent;-webkit-appearance:none;cursor:pointer}button::-moz-focus-inner{padding:0;border:0}.blind,legend{overflow:hidden;position:absolute;top:0;left:0;width:0;height:0;font-size:0;line-height:0}html,body{height:100%;background:#cacaca}.u_hc,.u_skip{visibility:hidden;overflow:hidden;position:absolute;left:-999em;width:0;height:0;font-size:0;line-height:0}.dimmed{position:fixed;top:0;left:0;right:0;bottom:0;z-index:20;background:rgba(0,0,0,.7)}/* image */.btn:after,.img_more,.ly_viewer .btn_close,header button span,.page_none:before{display:inline-block;overflow:hidden;background:url(\"data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAPoAAACeCAYAAAAbiRdxAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoxMUQ1N0FGREZDNENFNDExODdGRENCMDFCQ0ZDQjlCQiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoyMkExQUNBOTVGREMxMUU0QTNEOThENDQzNjQ1MjdGRSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoyMkExQUNBODVGREMxMUU0QTNEOThENDQzNjQ1MjdGRSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjE5QkU2NzUwREI1RkU0MTFCOThERkJGNUU5NURBOENGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjExRDU3QUZERkM0Q0U0MTE4N0ZEQ0IwMUJDRkNCOUJCIi8+IDwvcmRmOkRlc2NyaXB0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\") no-repeat;background-size:125px 79px;text-indent:-9999px;vertical-align:top}/* \uacf5\ud1b5  */header{position:fixed;top:0;left:0;right:0;z-index:10;height:42px;background:#575757}header h1 a{display:-webkit-box;height:42px;padding-left:15px;vertical-align:middle;-webkit-box-orient:vertical;-webkit-box-pack:center}header h1 span{display:block;margin-top:3px;font-size:11px;color:#9d9d9d;font-weight:normal;letter-spacing:0}header button{position:absolute;top:0;right:2px;padding:12px}header button span{width:16px;height:16px;background-position:-22px -41px;line-height:999px}#ct{padding:42px 14px 14px}#ct:after{content:\"\";display:block;clear:both}#ct.no_header{padding:0 14px 14px}/* \uc811\uc18d\ubd88\uac00 \ud398\uc774\uc9c0 */.page_none{display:-webkit-box;height:100%;background:#fff;box-sizing:border-box;vertical-align:middle;-webkit-box-orient:vertical;-webkit-box-pack:center;text-align:center;font-size:15px;color:#666;line-height:18px}.page_none:before{display:block;width:34px;height:30px;margin:0 auto 10px;background-position:-91px -49px;content:\'\'}/* \uac00\ub85c */.landscape #ct{height:100%;padding:42px 0 0}.landscape #ct.no_header{padding:0}.landscape .lst_wrap{margin:7px}.landscape .lst_bg{margin:7px}.landscape .notice{max-width:54%;margin:0 auto}.landscape .lst_bx{position:absolute;width:50%;margin-top:0}</style></head><body class=\"portrait\"><div class=\"u_skip\"><a href=\"#ct\">\ubcf8\ubb38 \ubc14\ub85c\uac00\uae30</a></div><header><h1><a href=\"#\"><img src=\"data:image/gif;base64,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\" alt=\"toast promotiont\" width=\"94\" height=\"17\"></a></h1><button type=\"button\" onClick=\"ToastPromotion.closeWebView();\"><span>\ub2eb\uae30</span></button></header><div id=\"ct\" class=\"page_none\"><h2 class=\"blind\">\uac8c\uc784 \uc774\ubca4\ud2b8 \uac8c\uc2dc\uae00</h2><p>\ud604\uc7ac \uc811\uc18d\uc774 \uc6d0\ud65c\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.<br>\uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc811\uc18d \ud574 \uc8fc\uc138\uc694!</p></div></body></html>"

    const-string v1, "text/html; charset=UTF-8"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "PromotionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toastpromotion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "execbrowser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v0}, Lcom/toast/android/analytics/PromotionActivity;->access$000(Lcom/toast/android/analytics/PromotionActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/PromotionActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string v0, "PromotionActivity"

    const-string v2, "browser not found"

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v0}, Lcom/toast/android/analytics/PromotionActivity;->access$000(Lcom/toast/android/analytics/PromotionActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "execapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_5

    const-string v0, "package"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "referrer"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v3, v0}, Lcom/toast/android/analytics/PromotionActivity;->access$100(Lcom/toast/android/analytics/PromotionActivity;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-virtual {v3}, Lcom/toast/android/analytics/PromotionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-virtual {v4, v3}, Lcom/toast/android/analytics/PromotionActivity;->startActivity(Landroid/content/Intent;)V

    if-eqz v2, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.toast.android.analytics.toastpromotion.EXECUTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "referrer"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "packagename"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/PromotionActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkinstall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_7

    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v3, v2}, Lcom/toast/android/analytics/PromotionActivity;->access$100(Lcom/toast/android/analytics/PromotionActivity;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "javascript:checkAppInstallCallback(\'%s\', %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    if-eqz v3, :cond_6

    const-string v0, "true"

    :goto_2
    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v2}, Lcom/toast/android/analytics/PromotionActivity;->access$200(Lcom/toast/android/analytics/PromotionActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_6
    const-string v0, "false"

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkmultiinstall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_8

    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v3, v2}, Lcom/toast/android/analytics/PromotionActivity;->access$300(Lcom/toast/android/analytics/PromotionActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "javascript:checkMultiAppInstallCallback(\'%s\')"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v2}, Lcom/toast/android/analytics/PromotionActivity;->access$200(Lcom/toast/android/analytics/PromotionActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getinstalledapplist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v2}, Lcom/toast/android/analytics/PromotionActivity;->access$400(Lcom/toast/android/analytics/PromotionActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "javascript:getInstalledAppListCallback(\'%s\')"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebViewClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v2}, Lcom/toast/android/analytics/PromotionActivity;->access$200(Lcom/toast/android/analytics/PromotionActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1
.end method
