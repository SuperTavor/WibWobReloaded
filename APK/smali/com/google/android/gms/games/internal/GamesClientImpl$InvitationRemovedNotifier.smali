.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field private final zzavC:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->zzavC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->zzavC:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method
