.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# instance fields
.field private final zzawA:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlb$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->zzawA:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zzi(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzfG(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->zzawA:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
