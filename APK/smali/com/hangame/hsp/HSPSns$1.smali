.class final Lcom/hangame/hsp/HSPSns$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;

.field final synthetic val$idpCode:Ljava/lang/String;

.field final synthetic val$idpId:Ljava/lang/String;

.field final synthetic val$isUseFacebookGameApp:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSns$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpId:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/HSPSns$1;->val$isUseFacebookGameApp:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    iget-object v0, p0, Lcom/hangame/hsp/HSPSns$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpId:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iget-object v4, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpId:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/HSPIdpInfoCache;->insert(JLjava/lang/String;Ljava/lang/String;Z)J

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iget-object v1, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/hangame/hsp/HSPCacheManager;->getIdpCode(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPSns$1;->val$isUseFacebookGameApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p3, v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;->Load([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LXDR/XDRException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_3

    const-string v0, "HSPSns"

    const-string v1, "reportGameIdpAuthTicket Success!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPSns$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v0, p1, p2}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpId:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$1;->val$idpCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/HSPCacheManager;->getIdpCode(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "HSPSns"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "HSPSns"

    invoke-virtual {v1}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string v1, "HSPSns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportGameIdpAuthTicket status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;-><init>()V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p3, v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;->Load([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch LXDR/XDRException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_5

    const-string v0, "HSPSns"

    const-string v1, "reportIdpAuthTicket Success!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "HSPSns"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v2, "HSPSns"

    invoke-virtual {v1}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    const-string v1, "HSPSns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportIdpAuthTicket status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto/16 :goto_2

    :cond_6
    const-string v0, "HSPSns"

    const-string v1, "reportIdpAuthTicket fail"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
