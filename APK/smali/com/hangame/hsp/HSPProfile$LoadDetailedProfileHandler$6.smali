.class Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;->this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;->this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->access$000(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;->this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    invoke-static {v2}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->access$300(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;->onDetailedProfileLoad(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
