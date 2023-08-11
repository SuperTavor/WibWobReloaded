.class Lcom/hangame/hsp/HSPMyProfile$28;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMyProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

.field final synthetic val$confirm:Z

.field final synthetic val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    iput-boolean p3, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$confirm:Z

    iput-object p4, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetExposeOption;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetExposeOption;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    :cond_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$confirm:Z

    iput-boolean v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iget-object v4, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$confirm:Z

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/HSPIdpInfoCache;->insert(JLjava/lang/String;Ljava/lang/String;Z)J

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPMyProfile;->access$700(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;->onMyProfileExposeIdpIDChange()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPMyProfile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    iput-object v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    iput-object v5, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$confirm:Z

    iput-boolean v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$idpCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetExposeOption;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$28;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToExposeIdpIDCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
