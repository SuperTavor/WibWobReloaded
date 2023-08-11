.class final Lcom/google/android/gms/internal/zzjv$zzb;
.super Lcom/google/android/gms/internal/zzjv$zza;


# instance fields
.field private final zzRm:Ljava/lang/String;

.field final synthetic zzRn:Lcom/google/android/gms/internal/zzjv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjv$zzb;->zzRn:Lcom/google/android/gms/internal/zzjv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzjv$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjv$zzb;->zzRm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjv$zzb;->zza(Lcom/google/android/gms/internal/zzjw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjw;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzjv$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjv$zzb$1;-><init>(Lcom/google/android/gms/internal/zzjv$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjv$zzb;->zzRm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzjw;->zzb(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjv$zzb;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
