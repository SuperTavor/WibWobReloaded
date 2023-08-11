.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$DeleteImpl;


# instance fields
.field final synthetic zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic zzayz:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->zzayz:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$DeleteImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->zzayz:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzi(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V

    return-void
.end method
