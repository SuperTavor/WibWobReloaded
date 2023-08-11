.class final Lcom/hangame/hsp/HSPMyProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->hangameId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPMyProfile;->access$102(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-boolean v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->allowedPhoneBook:Z

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPMyProfile;->access$202(Lcom/hangame/hsp/HSPMyProfile;Z)Z

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iput-boolean v4, v1, Lcom/hangame/hsp/HSPMyProfile;->mIsOnline:Z

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/HSPMyProfile;->mNickname:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iput-boolean v4, v1, Lcom/hangame/hsp/HSPMyProfile;->mIsValid:Z

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-boolean v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->exposeOnline:Z

    iput-boolean v2, v1, Lcom/hangame/hsp/HSPMyProfile;->mExposeOnline:Z

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iput-object v6, v1, Lcom/hangame/hsp/HSPMyProfile;->mLastLoginDate:Ljava/util/Date;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->recentlyPlayedGameNo:I

    iput v2, v1, Lcom/hangame/hsp/HSPMyProfile;->mRecentPlayedGameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->reserved:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    const-string v1, "HSPMyProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMyProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v3

    iget-wide v4, v3, Lcom/hangame/hsp/HSPMyProfile;->mMemberNo:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/hangame/hsp/HSPMyProfile;->mReserved:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->phoneNo:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->phoneNo:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/hangame/hsp/HSPMyProfile;->access$302(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mRecentPlayedGameNo:I

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPProfileCache;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPProfileCache;->insert(Lcom/hangame/hsp/HSPProfile;)J

    :cond_1
    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;->onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->phoneNo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPMyProfile;->access$302(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$000()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/hangame/hsp/HSPMyProfile;->access$302(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMyProfile;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;->onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$2;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;

    invoke-interface {v0, v6, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;->onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
