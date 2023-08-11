.class public Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPinCode(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;

    invoke-static {v0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->access$000(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "HSPSnsOAuthWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;

    invoke-static {v0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->access$100(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "pinCode"

    invoke-virtual {v0, v1, p1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;

    invoke-static {v0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->access$200(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPSnsOAuthWebview"

    const-string v1, "AccessToken :: get Pin Failed...."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
