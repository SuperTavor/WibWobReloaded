.class public final Lcom/toast/android/analytics/gcm/util/NotificationUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationUtil"

.field public static mBuilder:Landroid/support/v4/app/bt;

.field private static mInstance:Lcom/toast/android/analytics/gcm/util/NotificationUtil;


# instance fields
.field public customLayout:I

.field public mBackgoundColor:Ljava/lang/String;

.field public mBig_picture_url:Ljava/lang/String;

.field public mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field private mLargeIconId:I

.field public mLargeIcon_url:Ljava/lang/String;

.field public mMessage:Ljava/lang/String;

.field public mMessageColor:Ljava/lang/String;

.field private mNotificationIntent:Landroid/content/Intent;

.field public mPackageIcon:I

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mShowWhen:Z

.field public mSmallIcon:I

.field public mSmall_icon_label:Ljava/lang/String;

.field public mSmall_icon_url:Ljava/lang/String;

.field public mSoundFileNm:Ljava/lang/String;

.field public mSubText:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTitleColor:Ljava/lang/String;

.field public mUseChronometer:Z

.field public mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mShowWhen:Z

    iput-boolean v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mUseChronometer:Z

    iput v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->customLayout:I

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitleColor:Ljava/lang/String;

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    iput v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_label:Ljava/lang/String;

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    iput-object p1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmallIcon:I

    invoke-static {p1}, Lcom/toast/android/analytics/common/utils/ManifestUtil;->getDefaultAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->setNotificationIntent(Landroid/content/Intent;)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPackageIcon:I

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v4/app/bt;)Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroid/support/v4/app/br;

    invoke-direct {v0, p4}, Landroid/support/v4/app/br;-><init>(Landroid/support/v4/app/bt;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/app/br;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/br;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/br;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/br;->b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/br;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/br;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/br;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/toast/android/analytics/gcm/util/NotificationUtil;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mInstance:Lcom/toast/android/analytics/gcm/util/NotificationUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mInstance:Lcom/toast/android/analytics/gcm/util/NotificationUtil;

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mInstance:Lcom/toast/android/analytics/gcm/util/NotificationUtil;

    return-object v0
.end method


# virtual methods
.method public applyTemplate()V
    .locals 14

    const/16 v8, 0x15

    const/high16 v7, -0x1000000

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v4/app/bt;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/bt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->b(I)Landroid/support/v4/app/bt;

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->settingDefaultVibrateAndLed()V

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_layout"

    const-string v6, "layout"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.icon"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "setBackgroundColor"

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.background"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "setBackgroundColor"

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    const-string v4, "drawable"

    invoke-static {v0, v4}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.icon"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    :goto_1
    const-string v0, "notification.right_icon"

    const-string v4, "id"

    invoke-static {v0, v4}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    const-string v5, "drawable"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->a(I)Landroid/support/v4/app/bt;

    :goto_2
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bt;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.title"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitleColor:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.title"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitleColor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bt;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.text"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->getTextByteLength(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const-string v0, "NotificationUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMessage length :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-static {v5}, Lcom/toast/android/analytics/common/utils/StringUtil;->getTextByteLength(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_label:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.info"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_label:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.info"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v0, v1

    :goto_6
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSubText:Ljava/lang/String;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSubText:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text2"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text2"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text2"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_6
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mWhen:J

    iget-wide v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mWhen:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mShowWhen:Z

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mUseChronometer:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.chronometer"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.chronometer"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "setBase"

    iget-wide v8, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.chronometer"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "setStarted"

    invoke-virtual {v4, v5, v6, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :goto_8
    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.line3"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_12

    :goto_9
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.icon"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPackageIcon:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPackageIcon:I

    iput v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPackageIcon:I

    iput v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.icon"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPackageIcon:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    iget v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/bt;->a(I)Landroid/support/v4/app/bt;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    sget-object v4, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    iget v5, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/bt;->a(I)Landroid/support/v4/app/bt;

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.title"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    :cond_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_5

    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_5

    :cond_d
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.info"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    :cond_e
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text2"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    :cond_f
    iget-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v5, "notification.text2"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    :cond_10
    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.time"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.time"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "setTime"

    iget-wide v6, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mWhen:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_8

    :cond_11
    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    const-string v4, "notification.time"

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    :cond_12
    move v2, v3

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_4
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->buildResult()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public buildResult()Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->applyTemplate()V

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->settingSoundFile()V

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/bt;->a(J)Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bt;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/bt;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->downloadImgBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->build(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v4/app/bt;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIconId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->build(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v4/app/bt;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public downloadImgBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getNotificationIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mNotificationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public inputContentClear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitleColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/ManifestUtil;->getDefaultAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    return-void
.end method

.method public setNotificationIntent(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mNotificationIntent:Landroid/content/Intent;

    return-void
.end method

.method public settingDefaultVibrateAndLed()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sget-object v1, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bt;->a([J)Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    const v1, -0xff0100

    const/16 v2, 0x12c

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/bt;->a(III)Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bt;->a(Z)Landroid/support/v4/app/bt;

    return-void

    :array_0
    .array-data 8
        0x0
        0x64
        0xc8
        0xc8
    .end array-data
.end method

.method public settingSoundFile()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "default"

    iget-object v1, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->b(I)Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bt;->a(Landroid/net/Uri;)Landroid/support/v4/app/bt;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    const-string v1, "raw"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "NotificationUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no Sound File : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bt;->b(I)Landroid/support/v4/app/bt;

    sget-object v0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bt;->a(Landroid/net/Uri;)Landroid/support/v4/app/bt;

    :goto_1
    const-string v0, "default"

    iput-object v0, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBuilder:Landroid/support/v4/app/bt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bt;->a(Landroid/net/Uri;)Landroid/support/v4/app/bt;

    goto :goto_1
.end method
