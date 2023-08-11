.class public Ltv/superawesome/lib/sanetwork/file/SAFileQueue;
.super Ljava/lang/Object;


# instance fields
.field private queue:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNext()Ltv/superawesome/lib/sanetwork/file/SAFileItem;
    .locals 3

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemForURL(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getUrlKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemForURL(Ljava/lang/String;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;
    .locals 3

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getUrlKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToBackOfQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->removeFromQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->addToQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    return-void
.end method

.method public removeFromQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
