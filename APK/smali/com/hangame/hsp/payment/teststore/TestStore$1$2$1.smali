.class Lcom/hangame/hsp/payment/teststore/TestStore$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/teststore/TestStore$1$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/teststore/TestStore$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2$1;->this$1:Lcom/hangame/hsp/payment/teststore/TestStore$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2$1;->this$1:Lcom/hangame/hsp/payment/teststore/TestStore$1$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
