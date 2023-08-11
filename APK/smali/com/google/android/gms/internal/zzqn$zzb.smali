.class abstract Lcom/google/android/gms/internal/zzqn$zzb;
.super Lcom/google/android/gms/internal/zzqk;


# instance fields
.field protected zzaUI:Lcom/google/android/gms/internal/zzql;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqn$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqn$zzb$1;-><init>(Lcom/google/android/gms/internal/zzqn$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzb;->zzaUI:Lcom/google/android/gms/internal/zzql;

    return-void
.end method


# virtual methods
.method protected zzaZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzqn$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzqn$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqn$zzb;->zzaZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    move-result-object v0

    return-object v0
.end method
