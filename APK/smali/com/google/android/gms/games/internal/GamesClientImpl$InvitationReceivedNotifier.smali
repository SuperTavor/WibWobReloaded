.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field private final zzavB:Lcom/google/android/gms/games/multiplayer/Invitation;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->zzavB:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->zzavB:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method
