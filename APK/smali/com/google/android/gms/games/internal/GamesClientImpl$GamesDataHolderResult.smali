.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;
.super Lcom/google/android/gms/internal/zzle;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->zzfG(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzle;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
