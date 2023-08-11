.class public final Lcom/hangame/hsp/sns/HSPFacebook;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPFacebook"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 9

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] imageURL:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] name:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] link:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] captionLink:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] descriptionLink:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/hangame/hsp/sns/HSPFacebookService;->feed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    return-void
.end method

.method public static feedByUI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V
    .locals 9

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feedByUI -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] imageURL:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] name:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] link:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] captionLink:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] descriptionLink:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/hangame/hsp/sns/HSPFacebookService;->feedByUI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V

    return-void
.end method

.method public static getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth20;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth20;

    move-result-object v0

    return-object v0
.end method

.method public static login(ZLcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login -- isForceLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService;->login(ZLcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    return-void
.end method

.method public static logout(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLogoutCB;)V
    .locals 2

    const-string v0, "HSPFacebook"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/sns/HSPFacebookService;->logout(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLogoutCB;)V

    return-void
.end method

.method public static queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V
    .locals 2

    const-string v0, "HSPFacebook"

    const-string v1, "query HSPMemberNos"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService;->queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V

    return-void
.end method

.method public static queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V
    .locals 2

    const-string v0, "HSPFacebook"

    const-string v1, "query HSPMemberNos"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService;->queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V

    return-void
.end method

.method public static requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserScreenName -- userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;)V

    return-void
.end method

.method public static sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteApp --  message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/sns/HSPFacebookService;->sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    return-void
.end method

.method public static sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteApp --  message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/sns/HSPFacebookService;->sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V

    return-void
.end method

.method public static uploadImage(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadImage -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->uploadImage(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    return-void
.end method

.method public static uploadImage(ZLjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadImage -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->uploadImage(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SNS"

    const/16 v1, 0x5001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static uploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadImageByUI -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->uploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V

    return-void
.end method

.method public static uploadImageByUI(ZLjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V
    .locals 3

    const-string v0, "HSPFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadImageByUI -- doAuthentication:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->uploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SNS"

    const/16 v1, 0x5001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    .locals 2

    const-string v0, "HSPFacebook"

    const-string v1, "verifyAuthentication"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPFacebookService;->getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V

    return-void
.end method
