.class Lcom/hangame/hsp/HSPProfile$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPProfile;

.field final synthetic val$cacheDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile;Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;Lcom/hangame/hsp/HSPDetailedProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$6;->this$0:Lcom/hangame/hsp/HSPProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$6;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    iput-object p3, p0, Lcom/hangame/hsp/HSPProfile$6;->val$cacheDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$6;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile$6;->val$cacheDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    const-string v2, "HSPSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;->onDetailedProfileLoad(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
