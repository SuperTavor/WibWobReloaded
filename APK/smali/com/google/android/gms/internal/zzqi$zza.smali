.class abstract Lcom/google/android/gms/internal/zzqi$zza;
.super Lcom/google/android/gms/plus/Plus$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzaY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzqi$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzqi$zza$1;-><init>(Lcom/google/android/gms/internal/zzqi$zza;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqi$zza;->zzaY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;

    move-result-object v0

    return-object v0
.end method
