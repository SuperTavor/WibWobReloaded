.class Lcom/google/android/gms/games/internal/api/EventsImpl$1;
.super Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxd:[Ljava/lang/String;

.field final synthetic zzaxe:Lcom/google/android/gms/games/internal/api/EventsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zzaxe:Lcom/google/android/gms/games/internal/api/EventsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zzawR:Z

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zzaxd:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zzawR:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->zzaxd:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Z[Ljava/lang/String;)V

    return-void
.end method
