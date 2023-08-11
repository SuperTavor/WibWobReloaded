.class public Lcom/toast/android/analytics/common/utils/NetworkUtil;
.super Ljava/lang/Object;


# static fields
.field public static final INET4ADDRESS:I = 0x1

.field public static final INET6ADDRESS:I = 0x2

.field static _sInitialized:Z

.field static _sInstance:Lcom/toast/android/analytics/common/utils/NetworkUtil;


# instance fields
.field mConnManager:Landroid/net/ConnectivityManager;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInstance:Lcom/toast/android/analytics/common/utils/NetworkUtil;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mConnManager:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mConnManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/common/utils/NetworkUtil;
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getInstance() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInstance:Lcom/toast/android/analytics/common/utils/NetworkUtil;

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IP Address"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/common/utils/NetworkUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInstance:Lcom/toast/android/analytics/common/utils/NetworkUtil;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    return-void
.end method


# virtual methods
.method public getCurrentNetworkType()I
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getCurrentNetworkType() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method public getLocalIpAddress(I)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getLocalIpAddress() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWifiIpAddress()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getWifiIpAddress() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getWifiMacAddress() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize first before calling getWifiSSID() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/NetworkUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
