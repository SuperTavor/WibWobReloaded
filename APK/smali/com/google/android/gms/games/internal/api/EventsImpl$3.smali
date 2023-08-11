.class Lcom/google/android/gms/games/internal/api/EventsImpl$3;
.super Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;


# instance fields
.field final synthetic zzaxe:Lcom/google/android/gms/games/internal/api/EventsImpl;

.field final synthetic zzaxf:Ljava/lang/String;

.field final synthetic zzaxg:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zzaxe:Lcom/google/android/gms/games/internal/api/EventsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zzaxf:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zzaxg:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zzaxf:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;->zzaxg:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzp(Ljava/lang/String;I)V

    return-void
.end method
