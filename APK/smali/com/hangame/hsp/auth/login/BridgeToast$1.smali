.class final Lcom/hangame/hsp/auth/login/BridgeToast$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/BridgeToast$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/BridgeToast$1;->val$nickname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/high16 v8, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/BridgeToast$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string v0, "hsp_auth_bridge_toast"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const-string v0, "toast.image.view"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v1, "hsp.auth.bridge.toast.description"

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPConfiguration;->isUseRodaOasis()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastUsBrand()Z

    move-result v5

    if-ne v5, v6, :cond_2

    :cond_0
    const/high16 v5, 0x42860000    # 67.0f

    invoke-static {v5}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v4, "hsp_auth_bridge_toastgame_logo"

    invoke-static {v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isShowNickNm()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "hsp.auth.bridge.description.main"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hangame/hsp/auth/login/BridgeToast$1;->val$nickname:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v0, 0x57

    invoke-virtual {v2, v0, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string v0, "hsp.auth.bridge.description.main.fortoast"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isHangameBrand()Z

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v5

    if-ne v5, v6, :cond_4

    :cond_3
    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v4, "hsp_auth_bridge_hangame_logo"

    invoke-static {v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "hsp.auth.bridge.description.main.fortoast"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {v8}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v4, "hsp_auth_bridge_othergame_logo"

    invoke-static {v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "hsp.auth.bridge.description.main"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hangame/hsp/auth/login/BridgeToast$1;->val$nickname:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
