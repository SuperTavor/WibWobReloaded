.class public Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;
.super Lcom/google/android/gms/internal/zzlb$zza;


# instance fields
.field private final zzQo:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPT:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;->zzQo:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->zzQA:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;->zza(Lcom/google/android/gms/internal/zzjs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjs;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjs;->zzlw()Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;->zzQo:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    new-instance v2, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza$1;

    invoke-direct {v2, p0, p0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza$1;-><init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/internal/zzjq;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    move-result-object v0

    return-object v0
.end method
