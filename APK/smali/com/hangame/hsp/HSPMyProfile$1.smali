.class final Lcom/hangame/hsp/HSPMyProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$1;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$1;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    const-string v2, "HSPSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;->onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
