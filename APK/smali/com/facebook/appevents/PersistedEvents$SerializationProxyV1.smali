.class Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b1aac909L


# instance fields
.field private final proxyEvents:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->proxyEvents:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/facebook/appevents/PersistedEvents$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/facebook/appevents/PersistedEvents;

    iget-object v1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->proxyEvents:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method
