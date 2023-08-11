.class Lcom/google/android/gms/games/internal/GamesClientImpl$1;
.super Lcom/google/android/gms/games/internal/events/EventIncrementManager;


# instance fields
.field final synthetic zzavq:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->zzavq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;-><init>()V

    return-void
.end method


# virtual methods
.method public zzuU()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->zzavq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-object v0
.end method
