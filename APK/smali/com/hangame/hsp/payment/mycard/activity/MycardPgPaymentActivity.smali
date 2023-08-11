.class public Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;
.super Landroid/app/Activity;


# static fields
.field private static final ANDROID_BUILD_GINGERBREAD:I = 0x9

.field private static final LOGPREF:Ljava/lang/String; = "[MyCard] "

.field static final REQUEST_CODE:I = 0x4d2

.field private static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MycardPgPaymentActivity"


# instance fields
.field private arsPgLogo:[Ljava/lang/String;

.field private bCompletedPayment:Z

.field private mActivity:Landroid/app/Activity;

.field private pgLogoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->bCompletedPayment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancelPayment()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$3;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "cancelPayment Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "[MyCard] onActivityResult"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->bCompletedPayment:Z

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PaymentSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MycardResultCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MycardResultMessage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MycardPgPaymentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MyCard] paymentSuccess=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', mycardResultCode=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\', mycardResultCode=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "[MyCard] onActivityResult Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "[MyCard] Payment was canceled by onBackPressed."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->cancelPayment()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->setRequestedOrientation(I)V

    :cond_0
    iput-object p0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->pgLogoMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mycard_pglogo_array"

    const-string v7, "array"

    invoke-static {v3, v7}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->arsPgLogo:[Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->arsPgLogo:[Ljava/lang/String;

    array-length v7, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    aget-object v8, v3, v2

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, ""

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v10, ""

    if-eq v9, v10, :cond_1

    const-string v9, "MycardPgPaymentActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MyCard] map \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\':\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->pgLogoMap:Ljava/util/Map;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    const/4 v11, 0x1

    aget-object v8, v8, v11

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "hsp_payment_mycard_pglist"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    const-string v2, "hsp.payment.mycard.layout"

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    const-string v2, "hsp.payment.mycard.layout.close"

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v8, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$1;

    invoke-direct {v8, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "MycardPgPaymentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MyCard] MycardPgPaymentActivity onCreate - productId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", txId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "MycardInfoPgList"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "pgInfo"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    const-string v4, "MycardPgPaymentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MyCard] pgInfoString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v9, -0x1

    invoke-direct {v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x1e

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/4 v11, 0x0

    invoke-virtual {v2, v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    array-length v9, v8

    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v2, v8, v6

    const-string v10, "\\|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    invoke-direct {v11, p0, v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;[Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v11, "MycardPgPaymentActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MyCard] keyValue[0].trim() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v2, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "MycardPgPaymentActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MyCard] keyValue[1].trim() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v11, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->pgLogoMap:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_4

    iget-object v11, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->pgLogoMap:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v11, "MycardPgPaymentActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MyCard] logoImgName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const-string v11, ""

    if-eq v2, v11, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_3

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x1e

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0x1e

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v5, :cond_7

    rem-int/lit8 v2, v5, 0x3

    if-nez v2, :cond_7

    move-object v0, v3

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v4, v5, 0x1

    move-object v14, v2

    move v2, v4

    move-object v4, v14

    :goto_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v2

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v4, "MycardPgPaymentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MyCard] JSONException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v10, "MycardPgPaymentActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[MyCard] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v2, v5

    goto :goto_5

    :cond_5
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_6
    invoke-virtual {p0, v7}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_6
    const-string v2, "MycardPgPaymentActivity"

    const-string v3, "[MyCard] PgInfo is empty."

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object v2, v4

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->bCompletedPayment:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->cancelPayment()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    :try_start_0
    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "onPause Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    :try_start_0
    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "onResume Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
