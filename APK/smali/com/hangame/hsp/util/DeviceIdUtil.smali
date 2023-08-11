.class public Lcom/hangame/hsp/util/DeviceIdUtil;
.super Lcom/hangame/hsp/util/DeviceIdAbstract;


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field private static final TAG:Ljava/lang/String; = "DeviceIdUtil"

.field private static mDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/util/DeviceIdUtil;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/util/DeviceIdAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const-string v0, "DeviceIdUtil"

    const-string v1, "getDeviceId"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/util/DeviceIdUtil;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/util/DeviceIdUtil;->mDeviceId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v0, "DeviceIdUtil"

    const-string v1, "user don\'t let we use getDeviceId"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceId"

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getValPreferenceWithPackg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getPushUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceId"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "DeviceIdUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/hangame/hsp/util/DeviceIdUtil;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string v1, "DeviceIdUtil"

    const-string v2, "we reuse getDeviceId"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v1, "DeviceId"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
