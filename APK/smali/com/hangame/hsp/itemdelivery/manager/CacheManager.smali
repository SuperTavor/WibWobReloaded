.class public Lcom/hangame/hsp/itemdelivery/manager/CacheManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getItemDeliveryConfiguration()Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;
    .locals 5

    const/4 v1, 0x0

    const-class v2, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getPaymentInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CacheManager"

    const-string v3, "paymentInfoMap is null."

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v3, "biLogServerUrl"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    new-instance v1, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    const-string v0, "CacheManager"

    sget-object v1, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/itemdelivery/manager/CacheManager;->itemDeliveryConfiguration:Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CacheManager"

    const-string v4, "Not exists biLogServerUrl info"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
