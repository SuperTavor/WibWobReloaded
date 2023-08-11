.class public final Lcom/hangame/hsp/HSPUtil;
.super Ljava/lang/Object;


# static fields
.field public static final IS_RUN_FROM_PUSH:Ljava/lang/String; = "isRunFromPush"

.field private static final TAG:Ljava/lang/String; = "HSPUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertViewWithAgeRequirement(Landroid/app/Activity;Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HSPUtil"

    const-string v1, "alertViewWithAgeRequirement()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithGameNo()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "HSP_ALREADY_AUTHENTICATED_AS_ADULT"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;->HSP_ALREADY_AUTHENTICATED_AS_ADULT:Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;

    invoke-interface {p1, v0}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;->onCheckResult(Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "hsp.auth.check.adult"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "hsp.auth.check.adult.ok"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/HSPUtil$7;

    invoke-direct {v3, v1, v0, p1}, Lcom/hangame/hsp/HSPUtil$7;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/AlertDialog$Builder;Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "hsp.auth.check.adult.no"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/HSPUtil$8;

    invoke-direct {v3, p1, v1}, Lcom/hangame/hsp/HSPUtil$8;-><init>(Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/hangame/hsp/HSPUtil$9;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/HSPUtil$9;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static alertViewWithToastTerms(Landroid/app/Activity;Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "HSPUtil"

    const-string v1, "alertViewWithToastTerms()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getSimCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPUtil"

    const-string v1, "there is no usim"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;->onCheckResult(Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "KR"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HSPUtil"

    const-string v1, "there is not korea usim"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;->onCheckResult(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPUtil$4;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/HSPUtil$4;-><init>(Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPServiceProperties;->loadServiceProperties(Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;)V

    goto :goto_0
.end method

.method public static checkHangameUserAuthValid(Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;)V
    .locals 5

    const/4 v0, 0x1

    const/16 v4, 0x100d

    const/4 v1, 0x0

    const-string v2, "HSPUtil"

    const-string v3, "checkHangameUserAuthValid() :  "

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "HSPSERVICE"

    const-string v2, "you must login before this action"

    invoke-static {v0, v4, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p0, v0, v2, v1}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCheckAuthUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCheckAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_1
    const-string v0, "HSPUtil"

    const-string v2, "getCheckAuthUrl is null "

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const-string v2, "we don\'t allow you use this api in this domain"

    invoke-static {v0, v4, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p0, v0, v2, v1}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hangame"

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    if-nez v0, :cond_4

    const-string v0, "HSPUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the Domain is not supported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const-string v2, "we don\'t allow you use this api in this domain"

    invoke-static {v0, v4, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p0, v0, v2, v1}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HSPUtil"

    const-string v2, "getMemberID is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const v2, -0x7eff5000

    const-string v3, "we don\'t allow you use this api because you don\'t have hangame ID"

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p0, v0, v2, v1}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    new-instance v0, Lcom/hangame/hsp/HSPUtil$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$5;-><init>(Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static checkToastUserAuthValid(Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;)V
    .locals 5

    const/16 v4, 0x100d

    const/4 v3, 0x0

    const-string v0, "HSPUtil"

    const-string v1, "checkToastUserAuthValid() :  "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPSERVICE"

    const-string v1, "you must log in before this action"

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1, v3}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCheckAuthUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCheckAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "HSPUtil"

    const-string v1, "getCheckAuthUrl is null "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const-string v1, "we don\'t allow you use this api in this domain"

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1, v3}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "HSPUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the Domain is not supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const-string v1, "we don\'t allow you use this api in this domain"

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1, v3}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HSPUtil"

    const-string v1, "getMemberID is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSERVICE"

    const v1, -0x7eff5000

    const-string v2, "we don\'t allow you use this api because you don\'t have been logged in toastgame"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1, v3}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    new-instance v0, Lcom/hangame/hsp/HSPUtil$6;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$6;-><init>(Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static downloadImage(Ljava/lang/String;Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V
    .locals 3

    const-string v0, "HSPUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadImage(url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPUtil$1;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPUtil$1;-><init>(Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V

    invoke-static {p0, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadImage(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public static getCarrierCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ZZ"

    goto :goto_0
.end method

.method public static getHSPVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPVersion;->getHSPVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HSPUtil"

    const-string v1, "HSP is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSelectedImageFromGallery(Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V
    .locals 3

    const-string v0, "profile.myprofile.photopick"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_gnbShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_util_call"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPUtil$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/HSPUtil$2;-><init>(Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->addUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    return-void
.end method

.method public static getUniqueDeviceID()Ljava/lang/String;
    .locals 2

    const-string v0, "HSPUtil"

    const-string v1, "getUniqueDeviceID()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HSPUtil"

    const-string v1, "HSP is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hangameUserAuthValidUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "HSPUtil"

    const-string v1, "hangameUserAuthValidUrl()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPUtil"

    const-string v1, "you must login before this action"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLaunchingZone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KAKAOGAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "real"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getReAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&authTicket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hspZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "REAL-KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "real-old"

    goto :goto_1

    :cond_2
    const-string v1, "ALPHA-KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "alpha"

    goto :goto_1

    :cond_3
    const-string v0, "dev"

    goto :goto_1
.end method

.method public static isLaunchFromPush()Z
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isRunFromPush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLaunchFromPush(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "isRunFromPush"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static jogaWebView(Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth.agreement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_ALREADY_AGREED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    invoke-interface {p0, v0}, Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;->onResult(Lcom/hangame/hsp/HSPUtil$HSPJogaResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPUtil$3;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/HSPUtil$3;-><init>(Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPServiceProperties;->loadServiceProperties(Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;)V

    goto :goto_0
.end method

.method public static queryAddressBookInfos(Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;)V
    .locals 2

    const-string v0, "HSPUtil"

    const-string v1, "queryAddressBookInfos()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;

    invoke-direct {v0}, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/util/contact/ContactsWrapper;->setImpl(Lcom/hangame/hsp/util/contact/ContactsWrapper;)V

    new-instance v0, Lcom/hangame/hsp/HSPUtil$10;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$10;-><init>(Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/util/contact/ContactProvider;->loadAllContacts(Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    return-void
.end method

.method public static toastUserAuthValidUrl(Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string v0, "HSPUtil"

    const-string v1, "toastUserAuthValidUrl()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPUtil"

    const-string v1, "you must login before this action"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginTokenWithoutObject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "last.login.oauthprovider"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "guest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v0, "HSPUtil"

    const-string v1, "you must login with idp, not guest"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "INFO"

    const-string v3, "HSP_STAIND_TOKEN_FAILED"

    const v4, -0x7eff4000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto login token is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HSPState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "line"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "linegame"

    :cond_4
    invoke-static {v1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getReAuthUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&nextUrl=hsp://closeView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->access$000(Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;)I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->HSP_TOAST_REAUTH_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    invoke-static {v2}, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->access$000(Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;)I

    move-result v2

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&certifReason=reauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&certifReason=Identification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
