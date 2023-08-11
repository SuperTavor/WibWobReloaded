.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field private final zzavX:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->zzavX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->zzavX:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    return-void
.end method
