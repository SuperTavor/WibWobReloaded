.class public Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;
.super Lcom/hangame/hsp/ui/view/HSPWebView;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSP SnsPopupWebView"


# instance fields
.field private mCloseConditionVal:Ljava/lang/String;

.field private mIdpCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/HSPWebView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mCloseConditionVal:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mIdpCode:Ljava/lang/String;

    const-string v0, "idpCode"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mIdpCode:Ljava/lang/String;

    const-string v0, "urlmatchConditionClose"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mCloseConditionVal:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const-string v0, "HSP SnsPopupWebView"

    const-string v1, "HSPSnsPopupWebView \uc0dd\uc131\uc790 \ud638\ucd9c!!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkCloseView(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "HSP SnsPopupWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCloseView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mCloseConditionVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mCloseConditionVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->mCloseConditionVal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBackButtonPressed()V
    .locals 3

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onBackButtonPressed()V

    const-string v0, "userCancel"

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->closeView()V

    return-void
.end method

.method protected onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onCreate()V

    return-void
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v1, "HSP SnsPopupWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->checkCloseView(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "success?request="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "feedSuccess"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;->closeView()V

    :cond_1
    return-void

    :cond_2
    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "userCancel"

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "error_code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error_code=(\\w+)&error_msg=(\\w+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "error_code"

    invoke-static {v2, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "error_msg"

    invoke-static {v1, v0}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedSuccess"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
