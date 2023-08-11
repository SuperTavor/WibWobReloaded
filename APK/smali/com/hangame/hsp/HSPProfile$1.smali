.class final Lcom/hangame/hsp/HSPProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

.field final synthetic val$isThumbnail:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPProfile$1;->val$isThumbnail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;->photoUrlMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/json/simple/JSONObject;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/hangame/hsp/HSPProfile$1;->val$isThumbnail:Z

    if-eqz v4, :cond_0

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v4, "thm"

    invoke-virtual {v0, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v4, "pho"

    invoke-virtual {v0, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    const-string v4, "ETC"

    const/16 v5, 0x1007

    invoke-static {v4, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;->onProfileImageUrlsReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;->onProfileImageUrlsReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPhotoUrlList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;->onProfileImageUrlsReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$1;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;

    invoke-interface {v0, v6, p2}, Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;->onProfileImageUrlsReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
