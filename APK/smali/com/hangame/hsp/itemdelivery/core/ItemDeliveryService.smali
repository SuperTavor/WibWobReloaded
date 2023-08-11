.class public Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemDeliveryService"

.field private static instance:Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

.field private static isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->instance:Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->isInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->instance:Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    invoke-direct {v0}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;-><init>()V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->instance:Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->instance:Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ItemDeliveryService"

    const-string v1, "ItemDeliveryService initialize started."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService$1;

    invoke-direct {v1}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterLoginListener(Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;)V

    const-string v0, "ItemDeliveryService"

    const-string v1, "ItemDeliveryService initialize ended."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public finishItemDelivery(JLjava/util/List;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ItemDeliveryService"

    const-string v2, "finishItemDelivery called."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->isInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "ItemDeliveryService"

    const-string v2, "ItemDeliveryService has not initialized yet."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;

    invoke-direct {v1, p1, p2, p3}, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;-><init>(JLjava/util/List;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestItemDelivery(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ItemDeliveryService"

    const-string v2, "requestItemDelivery called."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->isInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "ItemDeliveryService"

    const-string v2, "ItemDeliveryService has not initialized yet."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;-><init>(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
