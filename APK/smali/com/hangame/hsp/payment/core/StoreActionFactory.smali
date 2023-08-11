.class public Lcom/hangame/hsp/payment/core/StoreActionFactory;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "StoreActionFactory"

.field private static mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/payment/core/StoreActionFactory;

    monitor-enter v1

    :try_start_0
    const-string v0, "StoreActionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payment initailized!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/StoreAction;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/StoreAction;->getInstance()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "StoreActionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there is no class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStoreAction(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.hangame.hsp.payment.googleplay.v3.GooglePlayPurchase"

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/payment/core/StoreActionFactory;->createInstance(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/hangame/hsp/payment/core/StoreActionFactory;->mStoreActionInstance:Lcom/hangame/hsp/payment/core/StoreAction;

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "com.hangame.hsp.payment.tstore.TStorePurchase"

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->NAVER_APPS:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "com.hangame.hsp.payment.naver.NaverPurchase"

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->KAKAO_GAMESHOP:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "com.hangame.hsp.payment.kakao.KakaoPurchase"

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->MYCARD:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "com.hangame.hsp.payment.mycard.MycardPurchase"

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->RAKUTEN:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "com.hangame.hsp.payment.rakuten.RakutenPurchase"

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->AMAZON:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "com.hangame.hsp.payment.amazon.AmazonPurchase"

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->TEST_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "com.hangame.hsp.payment.teststore.TestStorePurchase"

    goto :goto_1

    :cond_9
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_MI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "com.hangame.hsp.payment.mi.MIPurchase"

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BAIDU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "com.hangame.hsp.payment.baidu.BaiduPurchase"

    goto/16 :goto_1

    :cond_b
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_360:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "com.hangame.hsp.payment.toast360.Toast360Purchase"

    goto/16 :goto_1

    :cond_c
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_37:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "com.hangame.hsp.payment._37._37Purchase"

    goto/16 :goto_1

    :cond_d
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_UC:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "com.hangame.hsp.payment.uc.UCPurchase"

    goto/16 :goto_1

    :cond_e
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BILIBILI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "com.hangame.hsp.payment.bilibili.BiliBiliPurchase"

    goto/16 :goto_1

    :cond_f
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_FLYME:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "com.hangame.hsp.payment.flyme.FlymePurchase"

    goto/16 :goto_1

    :cond_10
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_HUAWEI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "com.hangame.hsp.payment.huawei.HuaweiPurchase"

    goto/16 :goto_1

    :cond_11
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_OPPO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "com.hangame.hsp.payment.oppo.OppoPurchase"

    goto/16 :goto_1

    :cond_12
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_LENOVO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "com.hangame.hsp.payment.lenovo.LenovoPurchase"

    goto/16 :goto_1

    :cond_13
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_ANZHI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "com.hangame.hsp.payment.anzhi.AnzhiPurchase"

    goto/16 :goto_1

    :cond_14
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_WANDOU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "com.hangame.hsp.payment.wandou.WandouPurchase"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "StoreActionFactory"

    const-string v2, "Cannot get the Store Action class."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method
