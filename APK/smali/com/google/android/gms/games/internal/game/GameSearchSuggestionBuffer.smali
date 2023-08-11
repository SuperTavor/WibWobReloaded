.class public final Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;->zzge(I)Lcom/google/android/gms/games/internal/game/GameSearchSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public zzge(I)Lcom/google/android/gms/games/internal/game/GameSearchSuggestion;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionRef;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
