.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field private final zzYm:I

.field private final zzawl:Ljava/lang/String;

.field private final zzawm:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzYm:I

    iput p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzawm:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzawl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzYm:I

    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzawm:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzawl:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    return-void
.end method
