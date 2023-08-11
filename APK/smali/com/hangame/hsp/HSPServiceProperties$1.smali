.class Lcom/hangame/hsp/HSPServiceProperties$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPServiceProperties;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPServiceProperties;Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPServiceProperties$1;->this$0:Lcom/hangame/hsp/HSPServiceProperties;

    iput-object p2, p0, Lcom/hangame/hsp/HSPServiceProperties$1;->val$callback:Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPServiceProperties$1;->val$callback:Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPServiceProperties$1;->val$callback:Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;->onServicePropertiesLoad(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    return-void
.end method
