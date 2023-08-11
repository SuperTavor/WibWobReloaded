.class Lcom/google/android/gms/internal/zzqn$zzb$1;
.super Lcom/google/android/gms/internal/zzqj;


# instance fields
.field final synthetic zzaUJ:Lcom/google/android/gms/internal/zzqn$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->zzaUJ:Lcom/google/android/gms/internal/zzqn$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzb$1;->zzaUJ:Lcom/google/android/gms/internal/zzqn$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzqn$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzqn$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/AttestationData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
