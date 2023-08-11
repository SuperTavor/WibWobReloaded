.class final Lcom/example/util/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "transferkey"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
