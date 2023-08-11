.class Lcom/google/android/gms/games/internal/api/QuestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxZ:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic zzayc:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zzaxZ:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zzawR:Z

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zzayc:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zzawR:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zzayc:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Z[Ljava/lang/String;)V

    return-void
.end method
