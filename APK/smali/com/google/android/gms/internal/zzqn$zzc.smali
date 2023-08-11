.class abstract Lcom/google/android/gms/internal/zzqn$zzc;
.super Lcom/google/android/gms/internal/zzqk;


# instance fields
.field protected zzaUI:Lcom/google/android/gms/internal/zzql;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqn$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqn$zzc$1;-><init>(Lcom/google/android/gms/internal/zzqn$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzc;->zzaUI:Lcom/google/android/gms/internal/zzql;

    return-void
.end method


# virtual methods
.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqn$zzc;->zzba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzqn$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzqn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V

    return-object v0
.end method
