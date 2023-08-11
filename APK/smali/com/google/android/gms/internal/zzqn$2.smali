.class Lcom/google/android/gms/internal/zzqn$2;
.super Lcom/google/android/gms/internal/zzqn$zzc;


# instance fields
.field final synthetic zzaUE:Lcom/google/android/gms/internal/zzqn;

.field final synthetic zzaUF:Ljava/util/List;

.field final synthetic zzaUG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUE:Lcom/google/android/gms/internal/zzqn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUF:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUG:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqn$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqn$2;->zza(Lcom/google/android/gms/internal/zzqo;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUI:Lcom/google/android/gms/internal/zzql;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUF:Ljava/util/List;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqn$2;->zzaUG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqo;->zza(Lcom/google/android/gms/internal/zzql;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
