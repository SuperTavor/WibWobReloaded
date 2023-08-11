.class Lcom/hangame/hsp/HSPMessage$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMessage$11;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$11;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$11$1;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdPushAgreement() dismiss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/HSPMessage$11$1;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iget-object v2, v2, Lcom/hangame/hsp/HSPMessage$11;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$11$1;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMessage$11;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v2}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "PUSH"

    const/16 v4, 0x4005

    const-string v5, "user cancel"

    invoke-static {v3, v4, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
