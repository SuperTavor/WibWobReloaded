.class abstract Lcom/google/android/gms/internal/zzpu$zzb;
.super Lcom/google/android/gms/internal/zzpu$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpu$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpu$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzaU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpu$zzb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpu$zzb$1;-><init>(Lcom/google/android/gms/internal/zzpu$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpu$zzb;->zzaU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;

    move-result-object v0

    return-object v0
.end method
