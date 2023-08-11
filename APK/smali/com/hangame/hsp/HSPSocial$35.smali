.class final Lcom/hangame/hsp/HSPSocial$35;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

.field final synthetic val$count:I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/HSPSocial$35;->val$index:I

    iput p2, p0, Lcom/hangame/hsp/HSPSocial$35;->val$count:I

    iput-object p3, p0, Lcom/hangame/hsp/HSPSocial$35;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget v3, p0, Lcom/hangame/hsp/HSPSocial$35;->val$index:I

    iget v0, p0, Lcom/hangame/hsp/HSPSocial$35;->val$index:I

    iget v1, p0, Lcom/hangame/hsp/HSPSocial$35;->val$count:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/hangame/hsp/HSPSocial$35;->val$index:I

    iget v5, p0, Lcom/hangame/hsp/HSPSocial$35;->val$count:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_1

    move v0, v1

    :cond_1
    const-string v4, "HSPSocial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@@@@@ socialFriendProfileList.subList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$35;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    invoke-interface {v0, v2, p3}, Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;->onCompletion(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$35;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    invoke-interface {v0, v2, p3}, Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;->onCompletion(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$35;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    invoke-interface {v0, v2, p3}, Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;->onCompletion(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
