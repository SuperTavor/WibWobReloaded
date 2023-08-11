.class Lcom/google/android/gms/internal/zzqn$zzc$1;
.super Lcom/google/android/gms/internal/zzqj;


# instance fields
.field final synthetic zzaUK:Lcom/google/android/gms/internal/zzqn$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzc$1;->zzaUK:Lcom/google/android/gms/internal/zzqn$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzc$1;->zzaUK:Lcom/google/android/gms/internal/zzqn$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzqn$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzqn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
