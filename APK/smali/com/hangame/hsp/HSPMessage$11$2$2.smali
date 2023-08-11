.class Lcom/hangame/hsp/HSPMessage$11$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPMessage$11$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$11$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$11$2$2;->this$1:Lcom/hangame/hsp/HSPMessage$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alertAdPushAgreement() : user don\'t agree night push"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$11$2$2;->this$1:Lcom/hangame/hsp/HSPMessage$11$2;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMessage$11$2;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMessage$11;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->mAdPushAgreementCB:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$11$2$2;->this$1:Lcom/hangame/hsp/HSPMessage$11$2;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMessage$11$2;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMessage$11;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/HSPMessage$11$2$2;->this$1:Lcom/hangame/hsp/HSPMessage$11$2;

    iget-object v2, v2, Lcom/hangame/hsp/HSPMessage$11$2;->this$0:Lcom/hangame/hsp/HSPMessage$11;

    iget-object v2, v2, Lcom/hangame/hsp/HSPMessage$11;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    invoke-static {v0, v3, v1, v3, v2}, Lcom/hangame/hsp/HSPMessage;->setAdPushAgreement(Landroid/app/Activity;ZZZLcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V

    return-void
.end method
