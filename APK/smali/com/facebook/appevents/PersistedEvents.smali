.class Lcom/facebook/appevents/PersistedEvents;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b1aac909L


# instance fields
.field private events:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;-><init>(Ljava/util/HashMap;Lcom/facebook/appevents/PersistedEvents$1;)V

    return-object v0
.end method


# virtual methods
.method public addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public containsKey(Lcom/facebook/appevents/AccessTokenAppIdPair;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/PersistedEvents;->events:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
