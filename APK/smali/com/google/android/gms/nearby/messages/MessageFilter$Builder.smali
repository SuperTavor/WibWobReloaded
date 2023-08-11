.class public final Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final zzaQb:Ljava/util/List;

.field private zzaQc:Z

.field private final zzaQd:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQb:Ljava/util/List;

    return-void
.end method

.method private zzL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQd:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/MessageType;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/MessageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one of the include methods must be called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQd:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQb:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQc:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/nearby/messages/MessageFilter$1;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeAllMyTypes()Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQc:Z

    return-object p0
.end method

.method public includeFilter(Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQd:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzAT()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQb:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzAV()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzAU()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzaQc:Z

    return-object p0
.end method

.method public includeNamespacedType(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    move-result-object v0

    return-object v0
.end method
