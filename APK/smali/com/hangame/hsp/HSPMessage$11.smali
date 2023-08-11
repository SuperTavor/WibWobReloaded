.class final Lcom/hangame/hsp/HSPMessage$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$11;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMessage$11;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$11;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/hangame/hsp/HSPMessage$11$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/HSPMessage$11$1;-><init>(Lcom/hangame/hsp/HSPMessage$11;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "hsp.push.ui.alert.msg.adpush"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hsp.push.last.alert.msg.agree"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/HSPMessage$11$2;

    invoke-direct {v4, p0, v0}, Lcom/hangame/hsp/HSPMessage$11$2;-><init>(Lcom/hangame/hsp/HSPMessage$11;Landroid/app/AlertDialog$Builder;)V

    const-string v5, "hsp.push.ui.alert.msg.disagree"

    invoke-static {v5}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/hangame/hsp/HSPMessage$11$3;

    invoke-direct {v6, p0}, Lcom/hangame/hsp/HSPMessage$11$3;-><init>(Lcom/hangame/hsp/HSPMessage$11;)V

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithTwoButtonWithBuilder(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$11;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
