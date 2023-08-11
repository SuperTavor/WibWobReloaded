.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;


# instance fields
.field final synthetic zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic zzayx:Lcom/google/android/gms/games/snapshot/Snapshot;

.field final synthetic zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zzayx:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zzayx:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    return-void
.end method
