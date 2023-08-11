.class public Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;
.super Ljava/lang/Object;


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/a/a/a/a;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDebugTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSetupDone:Z

    iput-boolean v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDisposed:Z

    iput-boolean v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSubscriptionsSupported:Z

    iput-boolean v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public checkPurchase()V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "!!!!!!!!!!!!!!!!!!!! checkPurchase"

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!! ownedItems="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!! ownedSkus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!!!!!!!!!!!!!!!!!!! purchaseDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!!!!!!!!!!!!!!!!!!! signatureList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!!!!!!!!!!!!!!!!!! purchaseDataList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] purchaseData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", signature="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method consume(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V
    .locals 5

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSetupDone:Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDisposed:Z

    iput-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    iput-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public finishPurchase()V
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "handleActivityResult"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    return-void
.end method

.method flagEndAsync()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mAsyncInProgress:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v7, -0x3ea

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mRequestCode:I

    if-eq p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    if-nez p3, :cond_2

    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v7, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v2

    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne p2, v5, :cond_8

    if-nez v2, :cond_8

    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_0
    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    iget-object v5, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    :cond_6
    :goto_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v7, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    if-ne p2, v5, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iput p4, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mRequestCode:I

    iput-object p5, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchaseListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;
    .locals 4

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;-><init>()V

    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryPurchases(Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v1, :cond_3

    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryPurchases(Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const/16 v2, -0x3f0

    const-string v3, "NullPointer while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_3
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    return-object v0
.end method

.method public queryInventoryAsync(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method queryPurchases(Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getPurchases with continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Owned items response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    move v4, v0

    :goto_0
    return v4

    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v4, -0x3ea

    goto :goto_0

    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move v3, v4

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sku is owned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logWarn(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->addPurchase(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;Ljava/util/List;)I
    .locals 9

    const/4 v1, 0x0

    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v5, v0, 0x14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x14

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v0, v2, 0x14

    mul-int/lit8 v8, v2, 0x14

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v3, v0, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v0, v5, 0x14

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mService:Lcom/a/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto/16 :goto_1

    :cond_9
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;

    invoke-direct {v4, p1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got sku details: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->addSkuDetails(Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;)V

    goto :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public startSetup(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->checkNotDisposed()V

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
