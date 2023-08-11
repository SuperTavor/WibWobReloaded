.class public Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
.super Ljava/lang/Object;


# instance fields
.field private zzaQg:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzaQt:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field private zzaQu:Lcom/google/android/gms/nearby/messages/SubscribeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQg:Lcom/google/android/gms/nearby/messages/Strategy;

    sget-object v0, Lcom/google/android/gms/nearby/messages/MessageFilter;->INCLUDE_ALL_MY_TYPES:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQt:Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/SubscribeOptions;
    .locals 5

    new-instance v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQg:Lcom/google/android/gms/nearby/messages/Strategy;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQt:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQu:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;-><init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;Lcom/google/android/gms/nearby/messages/SubscribeOptions$1;)V

    return-object v0
.end method

.method public setCallback(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQu:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    return-object p0
.end method

.method public setFilter(Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQt:Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-object p0
.end method

.method public setStrategy(Lcom/google/android/gms/nearby/messages/Strategy;)Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->zzaQg:Lcom/google/android/gms/nearby/messages/Strategy;

    return-object p0
.end method
