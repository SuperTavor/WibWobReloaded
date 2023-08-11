.class public Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentAndroidManifestValidator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started check : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkTStore(Landroid/content/Context;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkGoogle(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->NAVER_APPS:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkNaverApps(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->TEST_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->KAKAO_GAMESHOP:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkKakaoGameShop(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->MYCARD:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkMycard(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_360:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->check360(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BAIDU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_MI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkMi(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_TENCENT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkTencent(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_UC:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkUC(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_37:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->check37(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_FLYME:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkFlyme(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BILIBILI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkBiliBili(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->RAKUTEN:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkRakuten(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->AMAZON:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAmazon(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_OPPO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkOppo(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_HUAWEI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkHuawei(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_LENOVO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkLenovo(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_ANZHI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAnzhi(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_WANDOU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkWandoujia(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method private static check360(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RESTART_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.qihoo.gamecenter.sdk.activity.ContainerActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qihoopp.qcoinpay.QcoinActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "QHOPENSDK_APPID"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "QHOPENSDK_APPKEY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "QHOPENSDK_PRIVATEKEY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_360:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMetadatas(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static check37(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.sy37sdk.views.SY37web"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.sy37sdk.core.PayCallBackActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.auth.AuthActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.sy37sdk.receiver.NotifyReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.sqwan.msdk.receiver.SQPushReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_37:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkAmazon(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "amazon.iap.sharedKey"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->AMAZON:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMetadatas(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "PaymentAndroidManifestValidator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started checkAndroidManifest. StoreId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getStoreId()Lcom/hangame/hsp/payment/core/constant/StoreId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "1. Check SDK Version"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getMinSdkVersion()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string v0, "PaymentAndroidManifestValidator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to use higher than SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getMinSdkVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "   ** Check SDK Version : OK"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "2. Check Permissions"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "PaymentAndroidManifestValidator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   * Check Permissions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not granted permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "   ** Check Permissions : OK"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "3. Check Activities"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "PaymentAndroidManifestValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   * Check Activities : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_3
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "   ** Check Activities : OK"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "4. Check Receivers"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "PaymentAndroidManifestValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   * Check Receivers : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found Receiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "   ** Check Receivers : OK"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "5. Check Services"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "PaymentAndroidManifestValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   * Check Services : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_6
    const-string v2, "PaymentAndroidManifestValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found Service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "   ** Check Services : OK"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    const-string v3, "6. Check MetaDatas"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getMetadatas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "PaymentAndroidManifestValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   * Check MetaData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_3
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_8
    const-string v0, "PaymentAndroidManifestValidator"

    const-string v2, "   ** Check MetaData : OK"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PaymentAndroidManifestValidator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished checkAndroidManifest. StoreId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->getStoreId()Lcom/hangame/hsp/payment/core/constant/StoreId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v2, "PaymentAndroidManifestValidator"

    const-string v3, "checkAndroidManifest exception"

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method private static checkAnzhi(Landroid/content/Context;)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RESTART_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_LOGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.unionpay.uppay.PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5AuthActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.LogoActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UserCenterMainActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.ipaynow.plugin.activity.PayMethodActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.ipaynow.plugin.inner_plugin.wechat_plugin.activity.WeChatNotifyActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UserDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UpdateStarActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UpdateQQActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UpdateNickActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.PwdSettingActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.AnzhiMessageActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.PwdSettingClearActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.AccountSafeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.BindTelActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UnbindTelActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.CurrencyChargeWebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.ConsumHistoryWebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GameChargeWebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.FeedbackWebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.OpenLoginforQQActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.OpenLoginforWeiboActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.BindEmailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UnbindEmailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.MessageDetailsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.AccountSafeWindowActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.QQbindGuideActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.UpdateActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.NoticeActivtiy"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.LoadingActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.VipActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftDetailsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.BigPtictureWebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.LoginFailDailogActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.StrategyActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.MyFeedbackActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.VipFeedbackActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.OnlineFeedbackActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftBagActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.MoreGiftbagActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.ModifyPwdActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.ResetPwdActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.FindAccountFailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.NoticeDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.AnzhiGameBbsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.RechargeRedPacketWebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftBagDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.MessageActivitty"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftbagRecordActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.GiftDetailsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.OutGameAdActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.NewLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.RegisterActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.ForgetPwdwebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anzhi.usercenter.sdk.WebRegisterActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.alipay.android.app.MspService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.anzhi.usercenter.sdk.AppControlService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "com.anzhi.usercenter.sdk.control.NetListenerReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.anzhi.usercenter.sdk.DownloadReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_ANZHI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v4, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setServices(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkBaidu(Landroid/content/Context;)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.FLASHLIGHT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.baidu.platformsdk.LoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.AssistActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.BindPhoneActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.CashierDeskActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.WebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.ModifyPasswordActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.ThirdPartyLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.VisitorBindActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.BaiduBeanDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.OrderDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.SapiWebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.SapiLoginProxyActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.login.LoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.WelcomeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.OrderHomeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PayResultActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PcPwdCheckActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdCheckActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdSetActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdConfirmActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdSetAndConfirmActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdPayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PwdPaySmsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.WebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.BindCardNoActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.BindCardDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.BindCardDetailCredit2Activity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.BindCardDetailCreditActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.BindSmsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.SelectBindCardActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.PhonePwdActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.paysdk.ui.SignChannelListActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.sapi2.utils.LoginProtectAcitivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.unionpay.uppay.PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.auth.AuthActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.duoku.platform.ui.DKContainerActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.platformsdk.pay.channel.qqwallet.QQPayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.ext.motu.SelectBarActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.account.InputUserNameActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.account.LoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.account.Register2Activity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.account.ActivationActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.account.ProtocolActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.frs.FrsActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.frs.FrsImageActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.mention.MentionActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.mention.ReplyMeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.mention.AtMeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.pb.NewPbActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.pb.ImagePbActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.write.WriteActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.write.VcodeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.write.NewVcodeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.write.AtListActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.write.WriteImageActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.pb.ImageActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.pb.WebActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.baidu.tiebasdk.more.AccountActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.baidu.platformsdk.BDPlatformService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.duoku.platform.service.DKSuspensionService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.TiebaUpdateService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.TiebaFullUpdateService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.ClearTempService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.FatalErrorService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.TiebaSyncService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.TiebaMessageService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.baidu.tiebasdk.service.TiebaPrepareImageService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "com.baidu.tiebasdk.service.TiebaReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.baidu.tiebasdk.service.InstallReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.baidu.tiebasdk.service.SyncLoginReceiverForAs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "BDPlatformType"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "BDGameVersion"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v6, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BAIDU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5, v6}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v5, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v5, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setServices(Ljava/util/List;)V

    invoke-virtual {v5, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    invoke-virtual {v5, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMetadatas(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v5}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkBiliBili(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.bsgamesdk.android.activity.PaymentActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.bsgamesdk.android.activity.BSGameSdkAgreementActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.bsgamesdk.android.activity.Login_RegActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.android.app.sdk.WapPayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.bsgamesdk.android.activity.LoadingActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.auth.AuthActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_BILIBILI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkFlyme(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_FLYME:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkGoogle(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    const-string v1, "PaymentAndroidManifestValidator"

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkHuawei(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.huawei.hwid.openapi.auth.dump.OpenDumpActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.hwid.openapi.quicklogin.ui.QuickLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.gamebox.buoy.sdk.activity.WebPageActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.gamebox.buoy.sdk.activity.NoticeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.gamebox.buoy.sdk.activity.BaseDialogActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.huawei.gamebox.buoy.sdk.service.download.DownloadBroadcastReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_HUAWEI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkKakaoGameShop(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.kakao.api.KakaoPaymentActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.kakao.api.KakaoPaymentListActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->KAKAO_GAMESHOP:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkLenovo(Landroid/content/Context;)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.USE_CREDENTIALS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RESTART_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.lenovo.pay.api.PayManagerActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.gamesdk.ui.WelcomeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.KeyLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.PsLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.PsLoginCommonActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.StartLoginingGameActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.StartGameErrorActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.FindPasswordActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.RegistByPhoneActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.RegistByPhoneConfirmActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.FindPasswordConfirmActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.WebViewActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.FlexibleActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.lenovoid.ui.QuitActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.lsf.push.ui.DisplayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.lenovo.lsf.lenovoid.toolbar.AppCheckService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.lenovo.lsf.push.service.PushService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.lenovo.lsf.push.ui.DisplayService"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "com.lenovo.lsf.gamesdk.receiver.GameSdkReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.lenovo.lsf.gamesdk.receiver.GameSdkAndroidLReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.lenovo.lsf.push.receiver.PushReceiver"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "lenovo.open.appid"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lenovo.gamesdk.new"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v6, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_LENOVO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5, v6}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v5, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v5, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    invoke-virtual {v5, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setServices(Ljava/util/List;)V

    invoke-virtual {v5, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMetadatas(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v5}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkMi(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_MI:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkMycard(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.hangame.hsp.payment.mycard.activity.MycardTopupActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hangame.hsp.payment.mycard.activity.MycardPgPaymentActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hangame.hsp.payment.mycard.activity.MycardPgWebViewActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->MYCARD:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkNaverApps(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.hangame.hsp.payment.naver.activity.NaverIAPActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->NAVER_APPS:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkOppo(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.USE_CREDENTIALS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.nearme.gamecenter.open.core.LogoActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.nearme.gamecenter.open.core.OppoLogoActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.nearme.gamecenter.open.core.OnePlusLogoActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.nearme.gamecenter.open.core.WebViewBarActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.nearme.gamecenter.open.core.ActiveDetailActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.upgrade.activity.ForceUpgradeDialog"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.upgrade.activity.UpgradeDialog"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.upgrade.activity.MaintainActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.usercenter.opensdk.register.AccountRegisterActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.usercenter.opensdk.register.RegisterClauseActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.usercenter.opensdk.login.AccountLoginActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.usercenter.opensdk.findpsw.AccountFindPswActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.oppo.usercenter.opensdk.register.OneKeyRegSetPswActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.oppo.usercenter.sdk.helper.UserCenterOperateReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_OPPO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkRakuten(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "jp.co.rakuten.appk.publickey"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->RAKUTEN:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMetadatas(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkTStore(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.skplanet.dodo.IapWeb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkTencent(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static checkUC(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.USE_CREDENTIALS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cn.uc.gamesdk.SdkActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.auth.AuthActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_UC:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method

.method private static checkWandoujia(Landroid/content/Context;)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.USE_CREDENTIALS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.NFC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.toastgame.hsp.sample.wandoujia.WandoujiaActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.MarioAccountActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.MarioAccountChangeActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.UserInfoSettingActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.LeaderboardActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.AchievementActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.InviteActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.MiniProfileActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.activity.MarioActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.mariosdk.plugin.apk.fantasy.activity.FFActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wandoujia.oakenshield.activity.OakenshieldActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.unionpay.uppay.PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.shandianshua.nen.activity.PayActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.ipaynow.plugin.inner_plugin.wechat_plugin.activity.WeChatNotifyActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.wandoujia.mariosdk.plugin.api.WandouPluginReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.wandoujia.mariosdk.plugin.apk.message_push.BootCompleteReceiver"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "com.wandoujia.mariosdk.plugin.api.WandouPluginService"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.wandoujia.mariosdk.plugin.apk.message_push.MessagePushService"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.UCMobile.PayPlugin.PayPluginService"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/hangame/hsp/payment/core/model/ManifestInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;-><init>()V

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->CN_WANDOU:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setMinSdkVersion(I)V

    invoke-virtual {v4, v0}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setPermissions(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setActivities(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setReceivers(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->setServices(Ljava/util/List;)V

    const-string v0, "PaymentAndroidManifestValidator"

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->checkAndroidManifest(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ManifestInfo;)Z

    move-result v0

    return v0
.end method
