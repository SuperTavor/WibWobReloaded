.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;


# instance fields
.field final synthetic zzayA:Ljava/lang/String;

.field final synthetic zzayB:Ljava/lang/String;

.field final synthetic zzayC:Lcom/google/android/gms/games/snapshot/SnapshotContents;

.field final synthetic zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayA:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayC:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayA:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayB:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayy:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->zzayC:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
