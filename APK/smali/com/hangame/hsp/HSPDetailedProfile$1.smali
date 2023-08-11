.class Lcom/hangame/hsp/HSPDetailedProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPDetailedProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPDetailedProfile$1;->this$0:Lcom/hangame/hsp/HSPDetailedProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPDetailedProfile$1;->val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported service domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile$1;->val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;

    const/4 v2, 0x0

    const-string v3, "SERVICEDOMAIN"

    const/16 v4, 0x100d

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;->onNameLoad(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
