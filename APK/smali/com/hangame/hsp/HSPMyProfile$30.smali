.class Lcom/hangame/hsp/HSPMyProfile$30;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMyProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

.field final synthetic val$confirm:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile;ZLcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$30;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$confirm:Z

    iput-object p3, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAllowedPhoneBook;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAllowedPhoneBook;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAllowedPhoneBook;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPMyProfile;->access$202(Lcom/hangame/hsp/HSPMyProfile;Z)Z

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$confirm:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPMyProfile$30$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPMyProfile$30$1;-><init>(Lcom/hangame/hsp/HSPMyProfile$30;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocial;->followMembersInAddressBook(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V

    :cond_1
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

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v3, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$confirm:Z

    invoke-interface {v0, v3}, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;->onMyProfileUseAddressBookChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPMyProfile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAllowedPhoneBook;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$30;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPConfirmToUseAddressbookCB;->onConfirm(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
