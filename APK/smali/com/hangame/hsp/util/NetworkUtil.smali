.class public final Lcom/hangame/hsp/util/NetworkUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CELL_INTERFACES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkUtil"

.field public static final WIFI_INTERFACES:[Ljava/lang/String;

.field private static sImsiNumber:Ljava/lang/String;

.field private static sNetworkMobileCountry:Ljava/lang/String;

.field private static sNetworkOperatorName:Ljava/lang/String;

.field private static sSimOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rmnet"

    aput-object v1, v0, v3

    const-string v1, "ppp"

    aput-object v1, v0, v4

    const-string v1, "pdp"

    aput-object v1, v0, v5

    const-string v1, "pnp"

    aput-object v1, v0, v6

    const-string v1, "rmnet_sdio"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uwbr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wimax"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vsnet"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "usb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ccmni"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eth"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->CELL_INTERFACES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wlan"

    aput-object v1, v0, v3

    const-string v1, "eth"

    aput-object v1, v0, v4

    const-string v1, "tiwlan"

    aput-object v1, v0, v5

    const-string v1, "athwlan"

    aput-object v1, v0, v6

    const-string v1, "ra"

    aput-object v1, v0, v7

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->WIFI_INTERFACES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentNetwork()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "No Connection"

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :pswitch_0
    move-object v0, v1

    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_3

    packed-switch v2, :pswitch_data_1

    :cond_3
    :goto_2
    packed-switch v2, :pswitch_data_2

    :goto_3
    move-object v1, v0

    goto :goto_0

    :pswitch_1
    const-string v0, "Bluetooth"

    goto :goto_1

    :pswitch_2
    const-string v0, "Ethernet"

    goto :goto_1

    :pswitch_3
    const-string v0, "Cellular"

    goto :goto_2

    :pswitch_4
    const-string v0, "WIMAX"

    goto :goto_2

    :pswitch_5
    const-string v0, "Cellular"

    goto :goto_3

    :pswitch_6
    const-string v0, "Wi-Fi"

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getCurrentNetworkIPAddress()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "localhost"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "localhost"

    goto :goto_0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sImsiNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sImsiNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sImsiNumber:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    const-string v0, "N/A"

    const-string v1, "N/A"

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_2
    const-string v1, "NetworkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalIp :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    const-string v2, "NetworkUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalIpAddress Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getNetworkMobileCountry()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "ZZ"

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkMobileCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NoNetworkOp"

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "NoTelephony"

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sNetworkOperatorName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "NoSimOp"

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    :cond_1
    :goto_0
    sget-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string v0, "NoTelephony"

    sput-object v0, Lcom/hangame/hsp/util/NetworkUtil;->sSimOperator:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "NetworkUtil"

    const-string v2, "isNetworkConnected()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "NetworkUtil"

    const-string v2, "isNetworkConnected> ConnectivityManager is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "NetworkUtil"

    const-string v2, "isNetworkConnected> getActiveNetworkInfo is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const-string v1, "NetworkUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkConnected> ActiveNetworkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkConnected> ActiveNetworkInfo: connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWifiConnected()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method
