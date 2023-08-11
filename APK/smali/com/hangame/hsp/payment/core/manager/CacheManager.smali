.class public Lcom/hangame/hsp/payment/core/manager/CacheManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static billingPageUrl:Ljava/lang/String;

.field private static callbackMap:Ljava/util/Map;

.field private static chinaTelecomName:Ljava/lang/String;

.field private static clientStatusDataMap:Ljava/util/Map;

.field private static hspCookieMap:Ljava/util/Map;

.field private static isGambling:Z

.field private static paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

.field private static storeId:Ljava/lang/String;

.field private static useConfirmPopup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->callbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->clientStatusDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->hspCookieMap:Ljava/util/Map;

    sput-object v1, Lcom/hangame/hsp/payment/core/manager/CacheManager;->billingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addClientStatusData(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v0

    sget-object v2, Lcom/hangame/hsp/payment/core/manager/CacheManager;->clientStatusDataMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addHspCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->hspCookieMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBillingPageUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->billingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallback(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getChinaTelecomName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->chinaTelecomName:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientStatusData(J)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->clientStatusDataMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    return-object v0
.end method

.method public static getClientStatusDataMap()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->clientStatusDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getHspCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->hspCookieMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getPaymentConfiguration()Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-class v5, Lcom/hangame/hsp/payment/core/manager/CacheManager;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    return-object v2

    :cond_0
    :try_start_1
    const-string v3, ""

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getPaymentInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CacheManager"

    const-string v1, "paymentInfoMap is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1
    :try_start_2
    const-string v1, "maintenanceInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "maintenances"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    :try_start_4
    new-instance v0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    invoke-direct {v0, v4, v3}, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    const-string v0, "CacheManager"

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/payment/core/manager/CacheManager;->paymentConfiguration:Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CacheManager"

    const-string v6, "Not exists maintenances info"

    invoke-static {v1, v6, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v1, "CacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maintenance information size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v8, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maintenanceData (type) : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const-string v3, "reason"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move-object v3, v0

    move v4, v1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "CacheManager"

    const-string v1, "Billing Server Info parsing error"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    move v1, v4

    goto :goto_3
.end method

.method public static getStoreId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public static isGambling()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isGambling:Z

    return v0
.end method

.method public static isUseConfirmPopup()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->useConfirmPopup:Z

    return v0
.end method

.method public static removeAllCallback()V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static removeCallback(Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeClientStatusData(J)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->clientStatusDataMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setBillingPageUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->billingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public static setChinaTelecomName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->chinaTelecomName:Ljava/lang/String;

    return-void
.end method

.method public static setGambling(Z)V
    .locals 3

    const-string v0, "============"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPurchaseLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isGambling:Z

    return-void
.end method

.method public static setStoreId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->storeId:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->storeId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUseConfirmPopup(Z)V
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/payment/core/manager/CacheManager;->useConfirmPopup:Z

    return-void
.end method
