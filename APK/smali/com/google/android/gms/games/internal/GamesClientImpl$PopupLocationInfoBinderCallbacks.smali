.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesClient;


# instance fields
.field private final zzavl:Lcom/google/android/gms/games/internal/PopupManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/PopupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    return-void
.end method


# virtual methods
.method public zzus()Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/PopupManager;->zzvi()Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;-><init>(Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;)V

    return-object v0
.end method
