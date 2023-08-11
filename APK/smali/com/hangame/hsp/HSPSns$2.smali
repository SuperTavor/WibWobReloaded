.class final Lcom/hangame/hsp/HSPSns$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;

.field final synthetic val$isUseFacebookGameApp:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSns$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSns$2;->val$isUseFacebookGameApp:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const v6, -0x7eff6000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPSns$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$2;->val$isUseFacebookGameApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p3, v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->Load([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LXDR/XDRException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_2

    const-string v2, "HSPSns"

    const-string v3, "loadGameIdpAuthTicket Success!!"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->idpAuthTicketItemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->idpAuthTicketItemList:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;->idpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;->idpAuthTicket:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPSns$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "HSPSns"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "HSPSns"

    invoke-virtual {v2}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v1, "HSPSns"

    const-string v2, "gameIdpAuthTicketItemList is empty!"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SNS"

    invoke-static {v1, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string v2, "HSPSns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGameIdpAuthTicket status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;-><init>()V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p3, v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->Load([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch LXDR/XDRException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_5

    const-string v2, "HSPSns"

    const-string v3, "loadIdpAuthTicket Success!!"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->idpAuthTicketItemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->idpAuthTicketItemList:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;->idpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpAuthTicketItem;->idpAuthTicket:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string v3, "HSPSns"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v2

    const-string v3, "HSPSns"

    invoke-virtual {v2}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const-string v1, "HSPSns"

    const-string v2, "idpAuthTicketItemList is empty!"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SNS"

    invoke-static {v1, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto/16 :goto_1

    :cond_5
    const-string v2, "HSPSns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadIdpAuthTicket status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object p2

    goto/16 :goto_1

    :cond_6
    const-string v1, "HSPSns"

    const-string v2, "loadIdpAuthTicket fail"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
