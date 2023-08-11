.class public final Lcom/hangame/hsp/HSPMessage;
.super Ljava/lang/Object;


# static fields
.field public static AD_NIGHT_PUSH_KEY:Ljava/lang/String; = null

.field public static AD_PUSH_KEY:Ljava/lang/String; = null

.field public static CHECK_REGISTER:Ljava/lang/String; = null

.field private static IS_CALL_PUSH_AGREE_ALERT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TIME_FOR_PUSH_TOKEN:I = 0x1388

.field public static mActivityForPush:Landroid/app/Activity;

.field public static mAdPushAgreementCB:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

.field public static mGetAdPushAgreementCB:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

.field public static mIsAcceptAdNightPush:Z

.field public static mIsAcceptAdPush:Z

.field public static mIsUseResultUI:Z

.field private static sCheckPushTask:Ljava/util/TimerTask;

.field private static sCheckPushTimer:Ljava/util/Timer;

.field private static final sReceiveMessageListenerSet:Ljava/util/Set;

.field private static final sReceivePacketListenerSet:Ljava/util/Set;


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

.field private mIsReceiverAdmin:Z

.field private mIsSenderAdmin:Z

.field private mMessageNo:J

.field private mReceiverMemberNo:J

.field private mSendedDate:Ljava/util/Date;

.field private mSenderMemberNo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/hangame/hsp/HSPMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    const-string v0, "IsCallPushAgreeAlert"

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->IS_CALL_PUSH_AGREE_ALERT:Ljava/lang/String;

    const-string v0, "AdPushAgreement"

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    const-string v0, "AdNightPushAgreement"

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    const-string v0, "CHECK_REGISTER"

    sput-object v0, Lcom/hangame/hsp/HSPMessage;->CHECK_REGISTER:Ljava/lang/String;

    sput-object v1, Lcom/hangame/hsp/HSPMessage;->mAdPushAgreementCB:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    sput-object v1, Lcom/hangame/hsp/HSPMessage;->mGetAdPushAgreementCB:Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/HSPMessage;->mIsUseResultUI:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/HSPMessage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1000()V
    .locals 0

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->sendBipForSendingMessage()V

    return-void
.end method

.method static synthetic access$102(Lcom/hangame/hsp/HSPMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPMessage;->mMessageNo:J

    return-wide p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->IS_CALL_PUSH_AGREE_ALERT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hangame/hsp/HSPMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPMessage;->mSenderMemberNo:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/hangame/hsp/HSPMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPMessage;->mReceiverMemberNo:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage;->mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    return-object p1
.end method

.method static synthetic access$502(Lcom/hangame/hsp/HSPMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/hangame/hsp/HSPMessage;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage;->mSendedDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$702(Lcom/hangame/hsp/HSPMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPMessage;->mIsSenderAdmin:Z

    return p1
.end method

.method static synthetic access$802(Lcom/hangame/hsp/HSPMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPMessage;->mIsReceiverAdmin:Z

    return p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addMessageReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "addMessageReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addPacketReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePacketListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "addPacketReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addPushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "addPushNotificationReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/push/HSPPushManager;->getInstance()Lcom/hangame/hsp/push/HSPPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/push/HSPPushManager;->addPushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V

    goto :goto_0
.end method

.method public static alertAdPushAgreement(Landroid/app/Activity;Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x2008

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alertAdPushAgreement() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "User not login"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const/16 v3, 0x1009

    const-string v4, "you should login with HSP"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ko"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "there is not korea language"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const-string v3, "your language of device is not korea"

    invoke-static {v2, v4, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->IS_CALL_PUSH_AGREE_ALERT:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const-string v3, "already you call alert"

    invoke-static {v2, v4, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->CHECK_REGISTER:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v5, :cond_3

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->CHECK_REGISTER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const-string v3, "you don\'t register push token"

    invoke-static {v2, v4, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0

    :cond_3
    sput-object p0, Lcom/hangame/hsp/HSPMessage;->mActivityForPush:Landroid/app/Activity;

    new-instance v0, Lcom/hangame/hsp/HSPMessage$11;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPMessage$11;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static getAdPushAgreement(Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "getAdPushAgreement : Game don\'t call api related to ad push"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "User not login"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const/16 v3, 0x1009

    const-string v4, "you should login with HSP"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "getAdPushAgreement : Game call api "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/push/PushBroker;->getInstance()Lcom/hangame/hsp/push/PushBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/push/PushBroker;->getAdPushAgreement(Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V

    goto :goto_1
.end method

.method public static isEnablePushNotification()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isUsePush()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "usePush"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use push :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v2, "Configuration usePush is FALSE"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadMessagesFromMessageNo(JILcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;)V
    .locals 4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMessagesFromMessageNo(messageNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$1;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPMessage$1;-><init>(Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;->receiverMemberNo:J

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;->beginMessageNo:J

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedMsgs;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryNewMessageCount(Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;)V
    .locals 4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "queryNewMessageCount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPMessage$2;-><init>(Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewMsg;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewMsg;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewMsg;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewMsg;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryNewNoticeCount(Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "queryNewNoticeCount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isKorea()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/hangame/hsp/HSPMessage$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPMessage$3;-><init>(Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/server/HSPNoticeService;->requestNewNoticeCount(Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "NOTICESERVICE"

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;->onNewNoticeCountReceive(ILcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method static registerMessageHandlers()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/HSPMessage$12;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPMessage$12;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/serverpush/ServerPushService;->registerServerPushResponseHandler(Lcom/hangame/hsp/serverpush/ServerPushMsgHSP13ResponseHandler;)V

    new-instance v0, Lcom/hangame/hsp/HSPMessage$13;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPMessage$13;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/serverpush/ServerPushService;->registerServerPushResponseHandler(Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;)V

    return-void
.end method

.method public static removeMessageReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "removeMessageReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceiveMessageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removePacketReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePacketListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "removePacketReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->sReceivePacketListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removePushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "removePushNotificationReceiveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/push/HSPPushManager;->getInstance()Lcom/hangame/hsp/push/HSPPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/push/HSPPushManager;->removePushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V

    goto :goto_0
.end method

.method private static sendBipForSendingMessage()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "inflw_path"

    const-string v2, "hsp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actn_cnt"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rgst_dt"

    invoke-static {}, Lcom/hangame/hsp/util/CalendarUtil;->getCurrentDateTimeString14()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memo_reg_bloc"

    new-instance v2, Lcom/hangame/hsp/HSPMessage$14;

    invoke-direct {v2}, Lcom/hangame/hsp/HSPMessage$14;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/server/HSPBIPService;->requestGameMetaInfo(Ljava/lang/String;Ljava/util/Map;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public static sendImageMessage(JLandroid/graphics/Bitmap;Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;)V
    .locals 4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImageMessage(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$5;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPMessage$5;-><init>(Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;)V

    new-instance v1, Lcom/hangame/hsp/HSPMessage$6;

    invoke-direct {v1, p3, p0, p1, v0}, Lcom/hangame/hsp/HSPMessage$6;-><init>(Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;JLcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {p0, p1, p2, v1}, Lcom/hangame/hsp/server/HSPImageService;->sendImageMessage(JLandroid/graphics/Bitmap;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public static sendPacket(JI[BLcom/hangame/hsp/HSPMessage$HSPSendPacketCB;)V
    .locals 6

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPacket(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/HSPMessage$7;

    invoke-direct {v1, p4}, Lcom/hangame/hsp/HSPMessage$7;-><init>(Lcom/hangame/hsp/HSPMessage$HSPSendPacketCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->senderMemberNo:J

    iput-wide p0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->receiverMemberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    iput v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->gameNo:I

    iput p2, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->type:I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPacket;->packet:Ljava/util/Vector;

    aget-byte v4, p3, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static sendPushNotification(JLjava/lang/String;Ljava/util/Map;Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;)V
    .locals 4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPushNotification(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-string v0, "content"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PUSH"

    const/16 v1, 0x1003

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;->onPushNotificationSend(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMessage$8;

    invoke-direct {v0, p4}, Lcom/hangame/hsp/HSPMessage$8;-><init>(Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->gameNo:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->osNo:I

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->message:Ljava/lang/String;

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendPushMsg;->param:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static sendTextMessage(JLjava/lang/String;Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;)V
    .locals 4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessage(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$4;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPMessage$4;-><init>(Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->senderMemberNo:J

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->receiverMemberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-static {v2}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->access$1100(Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)B

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->messageContentType:I

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->messageContent:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static setAdPushAgreement(Landroid/app/Activity;ZZZLcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 5

    if-nez p4, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdPushAgreement : Game don\'t call api related to ad push : useResultUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "User not login"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const/16 v3, 0x1009

    const-string v4, "you should login with HSP"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p4, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdPushAgreement : Game call api : useResultUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    const-string v0, "ko"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "there is not korea language"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->AD_PUSH_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMessage;->AD_NIGHT_PUSH_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getBooleanValPreferenceWithPackg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PUSH"

    const/16 v3, 0x2008

    const-string v4, "your language of device is not korea"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {p4, v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;->onCheckResult(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "if you select false of ad push, then you should select false of night push"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/push/PushBroker;->getInstance()Lcom/hangame/hsp/push/PushBroker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/push/PushBroker;->setAdPushAgreement(ZZZLcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V

    goto :goto_1
.end method

.method public static setPushNotification(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isUsePush()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "usePush"

    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable push push notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v2, "SharedPreferences editer is null"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v2, "Configuration usePush is FALSE"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public downloadImage(Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "downloadImage()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$9;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPMessage$9;-><init>(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    sget-object v2, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    if-eq v1, v2, :cond_0

    const-string v1, "ETC"

    const/16 v2, 0x1003

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContent:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadImage(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    goto :goto_0
.end method

.method public downloadResizedImage(IILcom/hangame/hsp/HSPMessage$HSPDownloadResizedImageCB;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/HSPMessage;->TAG:Ljava/lang/String;

    const-string v1, "downloadResizedImage()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMessage$10;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPMessage$10;-><init>(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPDownloadResizedImageCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    sget-object v2, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    if-eq v1, v2, :cond_0

    const-string v1, "ETC"

    const/16 v2, 0x1003

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContent:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadResizeImageMessage(Ljava/lang/String;IILcom/hangame/hsp/core/HSPHttpResHandler;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage;->mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    return-object v0
.end method

.method public getMessageNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPMessage;->mMessageNo:J

    return-wide v0
.end method

.method public getReceiverMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPMessage;->mReceiverMemberNo:J

    return-wide v0
.end method

.method public getSendedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage;->mSendedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSenderMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPMessage;->mSenderMemberNo:J

    return-wide v0
.end method

.method public isReceiverAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPMessage;->mIsReceiverAdmin:Z

    return v0
.end method

.method public isSenderAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPMessage;->mIsSenderAdmin:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPMessage [MessageNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMessage;->mMessageNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SenderMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMessage;->mSenderMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ReceiverMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMessage;->mReceiverMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContentType:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SendedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage;->mSendedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", IsSenderAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMessage;->mIsSenderAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsReceiverAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMessage;->mIsReceiverAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
