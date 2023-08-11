.class public Lcom/hangame/hsp/payment/mycard/MycardPurchase;
.super Lcom/hangame/hsp/payment/core/StoreAction;


# static fields
.field private static instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;->instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/payment/core/StoreAction;-><init>()V

    return-void
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;->instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;

    return-void
.end method


# virtual methods
.method public closePaymentService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getInstance()Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;->instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/mycard/MycardPurchase;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;->instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase;->instance:Lcom/hangame/hsp/payment/mycard/MycardPurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purchase(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/payment/mycard/MycardPurchase$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/mycard/MycardPurchase$1;-><init>(Lcom/hangame/hsp/payment/mycard/MycardPurchase;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
