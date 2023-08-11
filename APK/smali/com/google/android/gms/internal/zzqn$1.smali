.class Lcom/google/android/gms/internal/zzqn$1;
.super Lcom/google/android/gms/internal/zzqn$zzb;


# instance fields
.field final synthetic zzaUD:[B

.field final synthetic zzaUE:Lcom/google/android/gms/internal/zzqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/api/GoogleApiClient;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$1;->zzaUE:Lcom/google/android/gms/internal/zzqn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn$1;->zzaUD:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqn$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqn$1;->zza(Lcom/google/android/gms/internal/zzqo;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$1;->zzaUI:Lcom/google/android/gms/internal/zzql;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$1;->zzaUD:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqo;->zza(Lcom/google/android/gms/internal/zzql;[B)V

    return-void
.end method
