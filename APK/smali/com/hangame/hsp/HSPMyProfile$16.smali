.class Lcom/hangame/hsp/HSPMyProfile$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMyProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$16;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetPhoneNo;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetPhoneNo;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetPhoneNo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetPhoneNo;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPMyProfile;->access$302(Lcom/hangame/hsp/HSPMyProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-object v0, v0, Lcom/hangame/hsp/HSPMyProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    iput-object v1, v0, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    invoke-static {v0}, Lcom/hangame/hsp/HSPMyProfile;->access$600(Lcom/hangame/hsp/HSPMyProfile;)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;->onReport(Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;->onMyProfilePhoneNoChange(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "HSPMyProfile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetPhoneNo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;->onReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$16;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPReportPhoneNoCB;->onReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
