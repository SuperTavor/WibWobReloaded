.class public final Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "FbLoginUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static facebookSdkLogin(Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x1

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    const-string v0, "FbLoginUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facebookSdkLogin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v3}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "facebook"

    #invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    #invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    #invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    const-string v8, "SHA"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    const-string v7, "FbLoginUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyHash:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #invoke-static {v7, v8}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "FbLoginUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    #invoke-static {v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v0

    sget-object v5, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v5}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v5

    if-eq v0, v5, :cond_1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "FbLoginUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session.getActiveSession():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/Session;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #invoke-static {v0, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    #invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    #invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isEnforceApp2WebFacebook()Z

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-static {v11}, Lcom/facebook/Settings;->setEnforceApp2WebFacebook(Z)V

    :cond_2
    invoke-static {v2}, Lcom/facebook/Settings;->setApplicationId(Ljava/lang/String;)V

    #invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "email"

    aput-object v6, v5, v1

    const-string v1, "user_friends"

    aput-object v1, v5, v11

    const/4 v1, 0x2

    const-string v6, "public_profile"

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;

    invoke-direct {v5, v2, v3, v4}, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v11, v1, v5}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    return-void

    :catch_1
    move-exception v0

    const-string v5, "FbLoginUtil"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    #invoke-static {v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, "FbLoginUtil"

    const-string v6, "logout error"

    #invoke-static {v5, v6, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
