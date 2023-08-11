.class public Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICE_INFO_FILE:Ljava/lang/String; = "device_info.ta"

.field private static final ENCRYPTION_SEED:Ljava/lang/String; = "toastanalytics_seed"

.field private static final MAC_ADDRESS_REG_EXPRESSION:Ljava/lang/String; = "[0-9a-fA-F]{2}(?:[^0-9a-fA-F][0-9a-fA-F]{2}){5}"

.field private static final RETRY_INIT_MILLI_SEC:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DeviceInfoUtil"

.field private static mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFingerprint()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static changeMacAddressByServiceDomainRule(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get String = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[0-9a-fA-F]{2}(?:[^0-9a-fA-F][0-9a-fA-F]{2}){5}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "DeviceInfoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESULT MACADDRESS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toUpperCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const-string v1, "DeviceInfoUtil"

    const-string v2, "MacAddress Format Error."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static encryptByteArrayTo20Chars([B)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_2

    aget-byte v1, v3, v2

    add-int/lit8 v0, v2, 0xa

    aget-byte v0, v3, v0

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "SHA-1 not supported"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static existFile(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "device_info.ta"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to check existFile."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static fingerprinting()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->buildFingerprint()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    goto :goto_0
.end method

.method private static generateMacAddress()Ljava/lang/String;
    .locals 2

    const-string v0, "ff:ff:ff:00:00:00"

    const-string v1, "ff:ff:ff:ff:ff:ff"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->generateMacAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateMacAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x10

    const/4 v1, 0x0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move v0, v1

    :goto_0
    const/4 v6, 0x6

    if-ge v0, v6, :cond_1

    aget-object v6, v2, v0

    invoke-static {v6, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v3, v0

    invoke-static {v7, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->encryptByteArrayTo20Chars([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMacAddrByWifiManager(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC Address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "[^0-9a-fA-F:]"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC Address2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->mMacAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->mMacAddress:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->changeMacAddressByServiceDomainRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->existFile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DeviceInfoUtil"

    const-string v1, "Device info file exists."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getStringFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "DeviceInfoUtil"

    const-string v1, "Correct device info does not exists."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getMacAddressFromDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->mMacAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->changeMacAddressByServiceDomainRule(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DeviceInfoUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_1
.end method

.method static getMacAddressFromDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x20

    if-gt v1, v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getMacAddrByWifiManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "[0-9a-fA-F]{2}(?:[^0-9a-fA-F][0-9a-fA-F]{2}){5}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->saveMacAddressToFile(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->setWifiMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-ne v1, v2, :cond_3

    :try_start_1
    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->isWifiOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->setWifiMode(Landroid/content/Context;Z)V

    move v3, v2

    :cond_2
    mul-int/lit8 v4, v1, 0x64

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->isWifiOn(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to get MAC Address cause of unknown error."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to retry to get MAC Address."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v1

    :try_start_3
    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to set enable wifi."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to get MAC Address."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3g"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "DeviceInfoUtil"

    const-string v1, "getPhoneNumber"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myPhoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "DeviceInfoUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static getStringFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "device_info.ta"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "toastanalytics_seed"

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/AES128;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    const-string v1, "DeviceInfoUtil"

    const-string v2, "Finished file reading."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to close file stream."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    :try_start_4
    const-string v3, "DeviceInfoUtil"

    const-string v4, "Fail to read file."

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to close file stream."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v1, "DeviceInfoUtil"

    const-string v2, "Fail to close file stream."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v2, v0

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public static getUdid(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    const-string v3, "DeviceInfoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mac Address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string v3, "DeviceInfoUtil"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_3
    const-string v3, "DeviceInfoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get Device ID. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->encryptByteArrayTo20Chars([B)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DeviceInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypted String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_2
.end method

.method private static isRunningOnEmulator()Z
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->fingerprinting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifiOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public static loadMacAddressFromDevice(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil$1;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil$1;->start()V

    return-void
.end method

.method static saveMacAddressToFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/toast/android/analytics/common/utils/DeviceInfoUtil;->writeToFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeviceInfoUtil"

    const-string v1, "Success to save device info file"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DeviceInfoUtil"

    const-string v1, "Fail to save device info file"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setWifiMode(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "DeviceInfoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable WifiMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static writeToFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "device_info.ta"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v0, "toastanalytics_seed"

    invoke-static {v0, p1}, Lcom/toast/android/analytics/common/utils/AES128;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "DeviceInfoUtil"

    const-string v1, "Fail to write file."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
