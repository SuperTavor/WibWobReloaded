.class public abstract Lcom/hangame/hsp/util/DeviceIdAbstract;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceIdAbstract"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DeviceIdAbstract"

    const-string v1, "getDeviceId"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getPushUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
