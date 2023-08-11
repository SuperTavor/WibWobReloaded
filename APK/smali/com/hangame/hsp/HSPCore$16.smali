.class Lcom/hangame/hsp/HSPCore$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPCore;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$16;->this$0:Lcom/hangame/hsp/HSPCore;

    iput-object p2, p0, Lcom/hangame/hsp/HSPCore$16;->val$callback:Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "requestChangeGuestMemberNo HSPResHandler.onReceive() called"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$16;->val$callback:Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$16;->val$callback:Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;->onChangeGuestMemberNo(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    return-void
.end method
