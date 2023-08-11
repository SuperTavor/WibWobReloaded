.class public final Lcom/hangame/hsp/HSPMyProfile;
.super Lcom/hangame/hsp/HSPProfile;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPMyProfile"

.field private static final sChangeMyProfileListenerSet:Ljava/util/Set;

.field private static sInstance:Lcom/hangame/hsp/HSPMyProfile;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mHangameID:Ljava/lang/String;

.field private mPhoneNo:Ljava/lang/String;

.field private mUseAddressBook:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstanceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPProfile;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hangame/hsp/HSPMyProfile;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile;->mHangameID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/hangame/hsp/HSPMyProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPMyProfile;->mUseAddressBook:Z

    return p1
.end method

.method static synthetic access$302(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile;->mPhoneNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hangame/hsp/HSPMyProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPMyProfile;->updateMyProfileData()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hangame/hsp/HSPMyProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPMyProfile;->updateMyDetailedProfileData()V

    return-void
.end method

.method static synthetic access$700(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/HSPMyProfile;->updateIdpInfoData(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)V

    return-void
.end method

.method public static addMyProfileChangeListener(Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;)V
    .locals 2

    const-string v0, "HSPMyProfile"

    const-string v1, "addMyProfileChangeListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPMyProfile"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

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

.method static getInstance()Lcom/hangame/hsp/HSPMyProfile;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPMyProfile;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-static {v1, v3, v4}, Lcom/hangame/hsp/util/BitmapUtil;->loadBitmapFromLocalUri(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/util/BitmapUtil;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    float-to-int v0, v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-eqz v0, :cond_0

    int-to-float v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    const-string v3, "HSPMyProfile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static loadMyProfile(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    const-string v1, "loadMyProfileloadMyProfile"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v0

    iget-wide v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "HSPMyProfile"

    const-string v1, "loadMyProfileloadMyProfile cache!! "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPMyProfile$1;-><init>(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPMyProfile$2;-><init>(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMyProfile;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMyProfile;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMyProfile;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMyProfile;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method static notifyMyProfileAllPropertiesChange()V
    .locals 3

    const-string v0, "HSPMyProfile"

    const-string v1, "notifyMyProfileAllPropertiesChange() called"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v2, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;

    invoke-interface {v0}, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;->onMyProfileAllPropertiesChange()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static removeMyProfileChangeListener(Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;)V
    .locals 2

    const-string v0, "HSPMyProfile"

    const-string v1, "removeMyProfileChangeListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPMyProfile"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sChangeMyProfileListenerSet:Ljava/util/Set;

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

.method private updateIdpInfoData(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v1

    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    sget-object v2, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-wide v2, v2, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/HSPIdpInfoCache;->insert(JLjava/lang/String;Ljava/lang/String;Z)J

    :cond_0
    return-void
.end method

.method private updateMyDetailedProfileData()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->insert(Lcom/hangame/hsp/HSPDetailedProfile;)J

    :cond_0
    return-void
.end method

.method private updateMyProfileData()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPProfileCache;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPProfileCache;->insert(Lcom/hangame/hsp/HSPProfile;)J

    :cond_0
    return-void
.end method


# virtual methods
.method clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    return-void
.end method

.method public confirmToExposeAge(ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeAgeCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmToExposeAge(confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$25;-><init>(Lcom/hangame/hsp/HSPMyProfile;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeAgeCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->memberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;-><init>()V

    const-string v3, "age"

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->exposeCode:Ljava/lang/String;

    iput-boolean p1, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->expose:Z

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->exposePropList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public confirmToExposeGender(ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeGenderCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmToExposeGender(confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$26;-><init>(Lcom/hangame/hsp/HSPMyProfile;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeGenderCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->memberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;-><init>()V

    const-string v3, "gender"

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->exposeCode:Ljava/lang/String;

    iput-boolean p1, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->expose:Z

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->exposePropList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public confirmToExposeIdpID(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmToExposeIdpID(confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$27;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPMyProfile$27;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$28;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/HSPMyProfile$28;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->memberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposeIdpOption;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ExposeIdpOption;-><init>()V

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposeIdpOption;->idpCode:Ljava/lang/String;

    iput-boolean p2, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposeIdpOption;->expose:Z

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->exposeIdpList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public confirmToExposeOnline(ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeOnlineCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmToExposeOnline(confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$24;-><init>(Lcom/hangame/hsp/HSPMyProfile;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeOnlineCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->memberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;-><init>()V

    const-string v3, "online"

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->exposeCode:Ljava/lang/String;

    iput-boolean p1, v2, Lcom/hangame/hsp/xdr/hsp13/request/ExposePropertyOption;->expose:Z

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetExposeOption;->exposePropList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public confirmToUseAddressbook(ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmToUseAddressbook(confirm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->readContacts()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$29;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$29;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$30;-><init>(Lcom/hangame/hsp/HSPMyProfile;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAllowedPhoneBook;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAllowedPhoneBook;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAllowedPhoneBook;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAllowedPhoneBook;->memberNo:J

    iput-boolean p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAllowedPhoneBook;->allow:Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public deleteProfileImage(Lcom/hangame/hsp/HSPMyProfile$HSPDeleteProfileImageCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    const-string v1, "deleteProfileImage()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$9;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPMyProfile$9;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPDeleteProfileImageCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$10;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPMyProfile$10;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPDeleteProfileImageCB;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {v2, v3, v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->deleteUserPhoto(JILcom/hangame/hsp/core/HSPHttpResHandler;)V

    goto :goto_0
.end method

.method public getHangameID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HSPMyProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported service domain : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile;->mHangameID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile;->mHangameID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile;->mHangameID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile;->mPhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public reportBirthDate(IIILcom/hangame/hsp/HSPMyProfile$HSPReportBirthDateCB;)V
    .locals 5

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportBirthDate(year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$17;

    invoke-direct {v0, p0, p4}, Lcom/hangame/hsp/HSPMyProfile$17;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportBirthDateCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$18;

    invoke-direct {v0, p0, p4}, Lcom/hangame/hsp/HSPMyProfile$18;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportBirthDateCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetBirthDate;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetBirthDate;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetBirthDate;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetBirthDate;->memberNo:J

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd000000"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    add-int/lit8 v4, p2, -0x1

    invoke-direct {v3, p1, v4, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetBirthDate;->birthDate:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public reportGameUserData(Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportGameUserDataCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGameUserData(gameUserData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$23;-><init>(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportGameUserDataCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;->gameNo:I

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameUserData;->gameUserData:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public reportGender(Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;Lcom/hangame/hsp/HSPMyProfile$HSPReportGenderCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGender(gender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$19;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$19;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportGenderCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$20;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;Lcom/hangame/hsp/HSPMyProfile$HSPReportGenderCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGender;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGender;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGender;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGender;->memberNo:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGender;->gender:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public reportIdpID(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportIdpIDCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportIdpID(idpCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$21;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPMyProfile$21;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportIdpIDCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$22;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/HSPMyProfile$22;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportIdpIDCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;->memberNo:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;->idpCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpId;->idpId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public reportNickname(Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportNicknameCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportNickname(nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$3;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$3;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportNicknameCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$4;-><init>(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportNicknameCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetNickname;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetNickname;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetNickname;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetNickname;->memberNo:J

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetNickname;->nickname:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public reportPhoneNo(ILcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPhoneNo(certificationNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$15;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$15;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$16;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$16;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetPhoneNo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetPhoneNo;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetPhoneNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetPhoneNo;->memberNo:J

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetPhoneNo;->certificationNo:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public reportTodayWords(Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportTodayWordsCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportTodayWords(todayWords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$5;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$5;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportTodayWordsCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPMyProfile$6;-><init>(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPReportTodayWordsCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetTodayWord;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetTodayWord;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetTodayWord;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetTodayWord;->memberNo:J

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetTodayWord;->todayWord:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public requestCertificationNo(Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCertificationNo(phoneNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$11;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$11;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$12;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$12;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->memberNo:J

    invoke-static {p1}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->phoneNo:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->telecom:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->osNo:I

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->osVer:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public requestCertificationNo(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V
    .locals 4

    const-string v0, "HSPMyProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCertificationNo(phoneNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",email="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$13;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPMyProfile$13;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$14;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPMyProfile$14;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPRequestCertificationNoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->memberNo:J

    invoke-static {p1}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->phoneNo:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->telecom:Ljava/lang/String;

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->cmail:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->osNo:I

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendCertNoSms;->osVer:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPMyProfile [HangameID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile;->mHangameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UseAddressBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMyProfile;->mUseAddressBook:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/hangame/hsp/HSPProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadImageFromPath(Ljava/lang/String;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V
    .locals 6

    invoke-static {p1}, Lcom/hangame/hsp/HSPMyProfile;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPMyProfile$31;

    invoke-direct {v1, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$31;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {v4, v5, v2, v0, v1}, Lcom/hangame/hsp/server/HSPImageService;->uploadUserPhoto(JILandroid/graphics/Bitmap;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public uploadProfileImage(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "HSPMyProfile"

    const-string v1, "uploadProfileImage()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editProfile()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$7;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPMyProfile$7;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/hangame/hsp/HSPMyProfile$8;-><init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {v2, v3, v6, p1, v0}, Lcom/hangame/hsp/server/HSPImageService;->uploadUserPhoto(JILandroid/graphics/Bitmap;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->useHangameProfileImage()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pho"

    const-string v0, "thm"

    const-string v0, "HSPMyProfile"

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lorg/json/simple/JSONObject;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v2, "thm"

    iget-wide v4, p0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {v4, v5, v6, v6}, Lcom/hangame/hsp/server/HSPImageService;->getUserPhotoUrl(JIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v2, "pho"

    iget-wide v4, p0, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v6, v3}, Lcom/hangame/hsp/server/HSPImageService;->getUserPhotoUrl(JIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    const-string v0, "HSPMyProfile"

    sget-object v1, Lcom/hangame/hsp/HSPMyProfile;->sInstance:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public useAddressBook()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPMyProfile;->mUseAddressBook:Z

    return v0
.end method
