.class public Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;
.super Landroid/app/Activity;


# static fields
.field private static final ANDROID_BUILD_GINGERBREAD:I = 0x9

.field private static final LOGPREF:Ljava/lang/String; = "[MyCard] "

.field private static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MycardTopupActivity"


# instance fields
.field private bCompletedPayment:Z

.field private editTextMyCardID:Landroid/widget/EditText;

.field private editTextMyCardPWD:Landroid/widget/EditText;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->bCompletedPayment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->bCompletedPayment:Z

    return p1
.end method


# virtual methods
.method public cancelPayment()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$3;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardTopupActivity"

    const-string v2, "cancelPayment Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] Payment was canceled by onBackPressed."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->cancelPayment()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->setRequestedOrientation(I)V

    :cond_0
    iput-object p0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->mActivity:Landroid/app/Activity;

    const-string v0, "hsp_payment_mycard_topup"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "hsp.payment.mycard.topup.inputid"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardID:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardID:Landroid/widget/EditText;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardID:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v3}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v0, "hsp.payment.mycard.topup.inputpwd"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardPWD:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardPWD:Landroid/widget/EditText;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardPWD:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v3}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->editTextMyCardPWD:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v3}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v0, "hsp.payment.mycard.layout.close"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "hsp.payment.mycard.layout.submit"

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MycardTopupActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->bCompletedPayment:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->cancelPayment()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    :try_start_0
    const-string v0, "MycardTopupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardTopupActivity"

    const-string v2, "onPause Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    :try_start_0
    const-string v0, "MycardTopupActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardTopupActivity"

    const-string v2, "onResume Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
