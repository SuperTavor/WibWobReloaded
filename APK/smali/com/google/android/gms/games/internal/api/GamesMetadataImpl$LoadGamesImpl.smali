.class abstract Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzae(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;->zzae(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;

    move-result-object v0

    return-object v0
.end method
