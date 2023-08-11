.class public Lcom/hangame/hsp/payment/kakao/KakaoIAPView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final PAYMENT_CANCEL_OR_FAILED:I = 0x57

.field private static final PAYMENT_REQUEST_CODE:I = 0x7d1

.field private static final PAYMENT_SUCCESS:I = 0x56

.field private static final TAG:Ljava/lang/String; = "KakaoIAPView"

.field private static channelId:Ljava/lang/String;

.field private static clientSecret:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field kakao:Lcom/kakao/api/Kakao;

.field private mProductId:Ljava/lang/String;

.field private paymentSeq:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v1, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->userId:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->paymentSeq:Ljava/lang/String;

    const-string v0, "hsp_payment_translucent"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->setView(Landroid/view/View;)V

    const-string v0, "paymentseq"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->paymentSeq:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static closeIAPView()V
    .locals 3

    const-string v0, "KakaoIAPView"

    const-string v1, "closeIAPView Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setShowingProgressDialog(Z)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KakaoIAPView"

    const-string v2, "onPurchaseStateChange error"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/ContentViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    const/16 v2, 0x7d1

    if-ne p1, v2, :cond_3

    const-string v2, "KakaoIAPView"

    const-string v3, "on ActivityResult!!"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x56

    if-ne p2, v2, :cond_2

    const-string v2, "KakaoIAPView"

    const-string v3, "Kakao IAP success !!"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const-string v2, "order_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KakaoIAPView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "order_token : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "kakao\'s sdk payment is success."

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v3, v0, v4, v5}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    new-instance v3, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$5;

    invoke-direct {v3, p0, v0}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$5;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v3}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "hsp.payment.msg.processing"

    invoke-static {v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v3, "KakaoIAPView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kakao payment resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". orderToken is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kakao payment resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". orderToken is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "KakaoIAPView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kakao payment resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Data is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kakao payment resultCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Data is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81005

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.kakao.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x57

    if-ne p2, v2, :cond_0

    const-string v2, "KakaoIAPView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kakao payment resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". It is canceled or failed to kakao purchase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kakao payment resultCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It is canceled or failed to kakao purchase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81005

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.kakao.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    goto/16 :goto_0

    :cond_3
    const-string v2, "KakaoIAPView"

    const-string v3, "payment error!! requestCode is not valid."

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Kakao payment error!! requestCode is not valid."

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81005

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.kakao.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    goto/16 :goto_0
.end method

.method public onClose()V
    .locals 9

    const v4, 0x80008

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onClose()V

    const-string v0, "KakaoIAPView"

    const-string v1, "onClose Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setShowingProgressDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentStateManager.getPurchaseResult() : ."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "Kakao GameShop User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "KakaoIAPView"

    const-string v3, "onDestroy Fail."

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentStateManager.getPurchaseResult() : ."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "Kakao GameShop User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentStateManager.getPurchaseResult() : ."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "Kakao GameShop User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    throw v8
.end method

.method protected onCreate()V
    .locals 10

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onCreate()V

    const-string v0, "KakaoIAPView"

    const-string v1, "onCreate called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v8

    new-instance v9, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v9, v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/kakao/HSPKakao;->getKakaoInstance()Lcom/kakao/api/Kakao;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->kakao:Lcom/kakao/api/Kakao;

    const-string v0, "kakao"

    const-string v0, "kakao"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->channelId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->clientSecret:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "hsp.kakao.auth.pref.key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->accessToken:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->userId:Ljava/lang/String;

    const-string v0, "test"

    const-string v0, "gameqa"

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isRealLaunchingZone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "real"

    const-string v0, "real"

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "paymentseq"

    iget-object v3, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->paymentSeq:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hspzone"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "service_user_id"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KakaoIAPView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "developerPayload :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KakaoIAPView"

    const-string v1, "kakao startPaymentActivity start."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;

    invoke-direct {v0, p0, v9}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isUseConfirmPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KakaoIAPView"

    const-string v1, "isUseConfirmPopup: true"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hsp.payment.msg.confirm.purchase"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hsp.payment.btn.yes"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;

    invoke-direct {v2, p0, v6}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;Ljava/lang/String;)V

    const-string v3, "hsp.payment.btn.no"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3;

    invoke-direct {v4, p0}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)V

    new-instance v5, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$4;

    invoke-direct {v5, p0}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$4;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)V

    invoke-static/range {v0 .. v5}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLaunchingZone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLATFORMQA-KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "test"

    const-string v0, "platformqa"

    goto/16 :goto_0

    :cond_2
    const-string v0, "KakaoIAPView"

    const-string v1, "kakao.startPaymentActivity() - isUseConfirmPopup: false"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->kakao:Lcom/kakao/api/Kakao;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->channelId:Ljava/lang/String;

    sget-object v3, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->clientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->accessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->mProductId:Ljava/lang/String;

    iget-object v7, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->userId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/kakao/api/Kakao;->startPaymentActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v0, "KakaoIAPView exception"

    invoke-virtual {v9, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v9}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v0, "hsp.payment.err.msg.exception"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onPause()V

    const-string v0, "KakaoIAPView"

    const-string v1, "onPause Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->cancelTimer()V

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    const-string v0, "KakaoIAPView"

    const-string v1, "onResume called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KakaoIAPView"

    const-string v2, "onResume exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
