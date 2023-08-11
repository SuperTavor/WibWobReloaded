.class public Lcom/toast/android/analytics/gcm/GcmIntentService;
.super Landroid/app/IntentService;


# static fields
.field static final TAG:Ljava/lang/String; = "GcmIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getPushIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getPushIntent()Landroid/content/Intent;

    move-result-object v0

    :cond_0
    const-string v3, "cid"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pexe"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "psq"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v4/app/bt;

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v4/app/bt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/toast/android/analytics/common/utils/ManifestUtil;->GetApplicationIconId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/bt;->a(I)Landroid/support/v4/app/bt;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/bt;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bt;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/bt;->a(Z)Landroid/support/v4/app/bt;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bt;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/bt;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bt;->a([J)Landroid/support/v4/app/bt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "send_error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/toast/android/analytics/gcm/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void

    :cond_1
    const-string v2, "deleted_messages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GcmIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/toast/android/analytics/gcm/GcmIntentService;->onNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    const-string v2, "GcmIntentService"

    const-string v3, "onNotification called"

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/toast/android/analytics/gcm/GcmIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getPushIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getPushIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v3, v2

    :goto_0
    const-string v2, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "psq"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "pexe"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v2, "default"

    move-object v4, v2

    :goto_1
    const-string v2, "ta_title_text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "ta_title_color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "ta_body_color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "ta_bg_color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "ta_icon_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "ta_mini_icon_label"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "ta_mini_icon_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "ta_big_picture_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/toast/android/analytics/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/toast/android/analytics/ui/ResourceUtil;->initialize(Landroid/content/Context;)V

    :cond_0
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v3, :cond_a

    const-string v18, "cid"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "content"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "pexe"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "psq"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->getInstance(Landroid/content/Context;)Lcom/toast/android/analytics/gcm/util/NotificationUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->inputContentClear()V

    invoke-virtual {v7, v3}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->setNotificationIntent(Landroid/content/Intent;)V

    iput-object v6, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessage:Ljava/lang/String;

    invoke-static {v4}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v4, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSoundFileNm:Ljava/lang/String;

    :cond_1
    invoke-static {v10}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v10, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitle:Ljava/lang/String;

    :cond_2
    invoke-static {v11}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v11, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mTitleColor:Ljava/lang/String;

    :cond_3
    invoke-static {v12}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v12, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mMessageColor:Ljava/lang/String;

    :cond_4
    invoke-static {v13}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v13, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBackgoundColor:Ljava/lang/String;

    :cond_5
    invoke-static {v14}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v14, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mLargeIcon_url:Ljava/lang/String;

    :cond_6
    invoke-static {v15}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v15, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_label:Ljava/lang/String;

    :cond_7
    invoke-static/range {v16 .. v16}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mSmall_icon_url:Ljava/lang/String;

    :cond_8
    invoke-static/range {v17 .. v17}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->mBig_picture_url:Ljava/lang/String;

    :cond_9
    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v7}, Lcom/toast/android/analytics/gcm/util/NotificationUtil;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_a
    return-void

    :cond_b
    move-object v4, v2

    goto/16 :goto_1

    :cond_c
    move-object v3, v2

    goto/16 :goto_0
.end method
