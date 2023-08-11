.class Lcom/hangame/hsp/HSPMessage$11$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMessage$11;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$11;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$11$2;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMessage$11$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alertAdPushAgreement() : user agree ad push"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$11$2;->val$builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "hsp.push.ui.alert.msg.nightpush"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hsp.push.last.alert.msg.agree"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/HSPMessage$11$2$1;

    invoke-direct {v4, p0}, Lcom/hangame/hsp/HSPMessage$11$2$1;-><init>(Lcom/hangame/hsp/HSPMessage$11$2;)V

    const-string v5, "hsp.push.ui.alert.msg.disagree"

    invoke-static {v5}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/hangame/hsp/HSPMessage$11$2$2;

    invoke-direct {v6, p0}, Lcom/hangame/hsp/HSPMessage$11$2$2;-><init>(Lcom/hangame/hsp/HSPMessage$11$2;)V

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithTwoButtonWithBuilder(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
