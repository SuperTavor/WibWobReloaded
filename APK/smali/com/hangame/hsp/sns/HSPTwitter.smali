.class public final Lcom/hangame/hsp/sns/HSPTwitter;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPTwitter"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    return-void
.end method

.method public static feed(ZLjava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/hangame/hsp/sns/HSPTwitterService;->feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    return-void
.end method

.method public static feed(ZLjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    goto :goto_0

    :cond_1
    const-string v0, "SNS"

    const/16 v1, 0x5001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    return-void
.end method

.method public static feedByUI(ZLjava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/hangame/hsp/sns/HSPTwitterService;->feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    return-void
.end method

.method public static feedByUI(ZLjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 3

    const-string v0, "HSPTwitter"

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

    const-string v2, "] image:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    goto :goto_0

    :cond_1
    const-string v0, "SNS"

    const/16 v1, 0x5001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth10a;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth10a;

    move-result-object v0

    return-object v0
.end method

.method public static login(ZLcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login -- isForceLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService;->login(ZLcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    return-void
.end method

.method public static logout(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;)V
    .locals 2

    const-string v0, "HSPTwitter"

    const-string v1, "Logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/sns/HSPTwitterService;->logout(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;)V

    return-void
.end method

.method public static requestFriendInfos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsersLookup -- idsList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestFriendInfos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;)V

    return-void
.end method

.method public static requestFriendList(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendListCB;)V
    .locals 2

    const-string v0, "HSPTwitter"

    const-string v1, "getFriendsIds"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService;->requesttFriendsIds(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendListCB;)V

    return-void
.end method

.method public static requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;)V
    .locals 3

    const-string v0, "HSPTwitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserScreenName -- idsList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;)V

    return-void
.end method

.method public static verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    .locals 2

    const-string v0, "HSPTwitter"

    const-string v1, "verifyAuthentication"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/sns/HSPTwitterService;->getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/sns/HSPTwitterService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V

    return-void
.end method
