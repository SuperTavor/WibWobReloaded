.class public Lcom/hangame/hsp/sns/view/HSPSnsFeedView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final PROGRESS_TIMER_DELAY_TIME:J = 0x88b8L

.field private static final TAG:Ljava/lang/String; = "HSPSnsFeedView"

.field private static final TWIT_FEED_IMAGE_MAX_LENGTH:I = 0x6e

.field private static final TWIT_FEED_MAX_LENGTH:I = 0x8c


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDoAuthentication:Z

.field private mImageURL:Ljava/lang/String;

.field private mLandView:Landroid/view/View;

.field private mLink:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPortView:Landroid/view/View;

.field private mSendButtonView:Landroid/view/View;

.field private mSnsIdpCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLink:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mMessage:Ljava/lang/String;

    const-string v0, "HSPSnsFeedView"

    const-string v1, "HSPSnsFeedView"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "doAuthentication"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    const-string v0, "idpCode"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v0, "picture"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    const-string v0, "link"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLink:Ljava/lang/String;

    const-string v0, "caption"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mMessage:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "hsp_toast_topbar_sendbutton"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.text"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hsp.common.send.twitter"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.text.disable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hsp.common.send.twitter"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$1;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setTopBarButtonView(Landroid/view/View;)V

    const-string v0, "hsp_sns_feed_port"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    const-string v0, "hsp_sns_feed_land"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setViewInitialize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setViewInitialize(Landroid/view/View;I)V

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->onRotate(I)V

    return-void

    :cond_1
    const-string v0, "hsp_main_topbar_sendbutton"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.text"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hsp.common.send.facebook"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.text.disable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hsp.common.send.facebook"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->sendFeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->closeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->closeView()V

    return-void
.end method

.method static synthetic access$300(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setInputText(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->feedResult(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method

.method private feedResult(Lcom/hangame/hsp/HSPResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feedSuccess"

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->closeView()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "hsp.sns.feed.alert.send.fail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hsp.common.alert.negative.button"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$9;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$9;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    const-string v3, "hsp.common.alert.retry.button"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$10;

    invoke-direct {v4, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$10;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private getCurrentView()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    goto :goto_0
.end method

.method private sendFeed()V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "picture"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "hsp.common.progress.message"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/32 v4, 0x88b8

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZJ)V

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v3, "twitter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    :cond_0
    iget-boolean v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v3, "hsp.sns.feed.content.edit"

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$6;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$6;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static {v2, v0, v1, v3}, Lcom/hangame/hsp/sns/HSPTwitter;->feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "hsp.sns.feed.content.edit"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLink:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    iget-object v6, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    new-instance v7, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$7;

    invoke-direct {v7, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$7;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/sns/HSPFacebook;->feed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const-string v3, "hsp.sns.feed.content.edit"

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$8;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$8;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static {v2, v1, v0, v3}, Lcom/hangame/hsp/sns/HSPFacebook;->uploadImage(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    goto :goto_0
.end method

.method private setInputText(Ljava/lang/String;Landroid/view/View;)V
    .locals 13

    const/16 v12, 0x8

    const/16 v11, 0x21

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "picture"

    invoke-static {v1}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v6, "twitter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v1, :cond_1

    const/16 v1, 0x6e

    :goto_0
    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "hsp.feed.length.default"

    invoke-static {v8}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string v9, "hsp.feed.length.excced"

    invoke-static {v9}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "hsp.feed.text"

    invoke-static {v10}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v7, v2, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v2

    :goto_1
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "hsp.sns.feed.input.length"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.enable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.disable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    return-void

    :cond_1
    const/16 v1, 0x8c

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v8, v2, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v9, v2, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v4, "facebook"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.enable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    const-string v1, "hsp.topbar.sendbutton.disable"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSendButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_2
.end method

.method private setViewInitialize(Landroid/view/View;I)V
    .locals 9

    const v8, 0x436523d7    # 229.14f

    const/high16 v7, 0x41200000    # 10.0f

    const v6, 0x42f13333    # 120.6f

    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string v0, "hsp.sns.feed.content.edit"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "picture"

    invoke-static {v1}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v1, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v3, "twitter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "hsp.sns.feed.title.twitter"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setTitle(Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string v1, "hsp.sns.feed.image"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "hsp.sns.feed.image.stroke"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const v1, 0x432f8000    # 175.5f

    invoke-static {v1}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x435223d7    # 210.14f

    invoke-static {v1}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v7}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string v1, "hsp.sns.feed.image"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v6}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v3, "facebook"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hsp.sns.feed.title.facebook"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setTitle(Ljava/lang/String;)V

    const-string v1, "hsp.sns.feed.input.length"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_a

    const-string v1, "hsp.sns.feed.image.layout"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "hsp.sns.feed.facebook.layout"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v7}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "hsp.sns.feed.facebook.image.stroke"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "hsp.sns.feed.facebook.image"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "hsp.sns.feed.facebook.text.name"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "hsp.sns.feed.facebook.text.caption"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "hsp.sns.feed.facebook.text.decription"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-static {v8}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    new-instance v2, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;

    invoke-direct {v2, p0, p1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPUtil;->downloadImage(Ljava/lang/String;Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V

    goto :goto_1

    :cond_6
    const-string v1, "hsp.sns.feed.facebook.text.name"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const-string v1, "hsp.sns.feed.facebook.text.caption"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    const-string v1, "hsp.sns.feed.facebook.text.decription"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    invoke-static {v6}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "hsp.sns.feed.image"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    invoke-static {v6}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v8}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onBackButtonPressed()V
    .locals 3

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onBackButtonPressed()V

    const-string v0, "userCancel"

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onCreate()V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->hideKeyboard()V

    new-instance v0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$2;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static {v2, v0}, Lcom/hangame/hsp/sns/HSPTwitter;->login(ZLcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "hsp.sns.feed.content.edit"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {v0}, Lcom/hangame/hsp/ui/DeviceController;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mSnsIdpCode:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDoAuthentication:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->hideKeyboard()V

    new-instance v0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V

    invoke-static {v2, v0}, Lcom/hangame/hsp/sns/HSPFacebook;->login(ZLcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    goto :goto_0

    :cond_3
    const-string v0, "picture"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mImageURL:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mCaption:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "hsp.sns.feed.content.edit"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {v0}, Lcom/hangame/hsp/ui/DeviceController;->showKeyboard(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onRotate(I)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->hideKeyboard()V

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "hsp.sns.feed.content.edit"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    const-string v2, "hsp.sns.feed.content.edit"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mLandView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->mPortView:Landroid/view/View;

    const-string v2, "hsp.sns.feed.content.edit"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
