.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;


# instance fields
.field final synthetic zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic zzayu:Ljava/lang/String;

.field final synthetic zzayv:Z

.field final synthetic zzayw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayt:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayu:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayv:Z

    iput p5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayw:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayu:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayv:Z

    iget v2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;->zzayw:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;ZI)V

    return-void
.end method
