.class public Lcom/hangame/hsp/payment/core/manager/CallbackManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManager"

.field private static alertDialog:Landroid/app/AlertDialog;

.field public static mHSPPaymentCB:Lcom/hangame/hsp/payment/core/manager/HSPPaymentCB;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static addCallback(Landroid/app/Activity;Lcom/hangame/hsp/payment/core/constant/ClientApiType;Ljava/lang/Object;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getClientTxNo(Landroid/content/Context;)J

    move-result-wide v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->addCallback(Ljava/lang/Long;Ljava/util/Map;)V

    const-string v2, "CallbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add Client Transaction No : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static processCallback(Lcom/hangame/hsp/payment/core/model/CallbackObject;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "CallbackManager"

    const-string v2, "callbackObj is null."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    const-string v0, "CallbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentHeader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    const-string v0, "CallbackManager"

    const-string v2, "header is null."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getCallback(Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CallbackManager"

    const-string v2, "callbackMap is null."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    const-string v3, "CallbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processcallback - API Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCallback - ClientTxNo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_3

    const-string v0, "CallbackManager"

    const-string v2, "callback is null."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->setErrorMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ERROR"

    const-string v3, "LINEGAME_STABILITY_LOGIN_FAILED"

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "CallbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_5

    const/16 v3, 0x3de

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->setErrorMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_LOGIN_FAILED"

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getApiType()Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    if-eq v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getApiType()Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->setPurchaseResult(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/PaymentHeader;ILjava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_LOGIN_FAILED"

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->isShowAlert()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getAlertMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    :cond_8
    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getApiType()Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getResponse()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v4

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->respondApiCallback(JLcom/hangame/hsp/payment/core/constant/ClientApiType;Ljava/lang/Object;ILjava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_0

    :cond_9
    const-string v0, "CallbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/CallbackObject;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : callbackObj.getErrorMessage() is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static respondApiCallback(JLcom/hangame/hsp/payment/core/constant/ClientApiType;Ljava/lang/Object;ILjava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "Payment"

    invoke-static {v0, p4, p5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    if-ne p2, v0, :cond_0

    if-nez p6, :cond_0

    const-string v0, "CallbackManager"

    const-string v1, "respondApiCallback activity is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$5;->$SwitchMap$com$hangame$hsp$payment$core$constant$ClientApiType:[I

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$1;

    move-object v1, p7

    move-object v3, p6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/payment/core/manager/CallbackManager$1;-><init>(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;Landroid/app/Activity;J)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;

    invoke-direct {v0, p7, v2, p0, p1}, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;-><init>(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;J)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static sendClientStatus(Lcom/hangame/hsp/payment/core/model/PaymentHeader;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getClientStatusData(J)Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "CallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientStatusData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/payment/core/manager/CallbackManager$3;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/payment/core/manager/CallbackManager$3;-><init>(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static setPurchaseResult(I)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "CallbackManager"

    const-string v1, "processCallback - Purchase : Success"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->SUCCESS:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setPurchaseResult(Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x80008

    if-ne p0, v0, :cond_1

    const-string v0, "CallbackManager"

    const-string v1, "processCallback - Purchase : Canceled"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setPurchaseResult(Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;)V

    goto :goto_0

    :cond_1
    const-string v0, "CallbackManager"

    const-string v1, "processCallback - Purchase : Fail"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->FAIL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setPurchaseResult(Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;)V

    goto :goto_0
.end method

.method private static showAlertDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$4;

    invoke-direct {v0, p2, p1, p0}, Lcom/hangame/hsp/payment/core/manager/CallbackManager$4;-><init>(ILjava/lang/String;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
