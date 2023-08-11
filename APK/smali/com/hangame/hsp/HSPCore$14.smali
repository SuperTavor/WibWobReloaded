.class Lcom/hangame/hsp/HSPCore$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPCore;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$14;->this$0:Lcom/hangame/hsp/HSPCore;

    iput-object p2, p0, Lcom/hangame/hsp/HSPCore$14;->val$callback:Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$14;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$1000(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v4, p0, Lcom/hangame/hsp/HSPCore$14;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v4}, Lcom/hangame/hsp/HSPCore;->access$1000(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPAfterMappingToAccountListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPAfterMappingToAccountListener;->onAfterMappingToAccount()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$14;->this$0:Lcom/hangame/hsp/HSPCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCore;->access$1100(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/core/HSPResHandler;)V

    const-string v0, "HSPCore"

    const-string v1, "requestMappingToAccount HSPMyProfile.notifyMyProfileAllPropertiesChange() called"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->notifyMyProfileAllPropertiesChange()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$14;->val$callback:Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x14006d

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x14006c

    if-ne v0, v1, :cond_4

    :cond_2
    const-string v0, "ALREADY_MEMBERNO"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v0

    :goto_1
    iget-object v2, p0, Lcom/hangame/hsp/HSPCore$14;->val$callback:Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;

    invoke-interface {v2, p2, v0, v1}, Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;->onIdpIDMap(Lcom/hangame/hsp/HSPResult;J)V

    const-string v0, "ALREADY_MEMBERNO"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->removeBundle(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$14;->val$callback:Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;

    invoke-interface {v0, p2, v2, v3}, Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;->onIdpIDMap(Lcom/hangame/hsp/HSPResult;J)V

    goto :goto_2
.end method
