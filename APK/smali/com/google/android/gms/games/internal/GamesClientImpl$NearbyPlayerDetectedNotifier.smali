.class final Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field private final zzawa:Lcom/google/android/gms/games/Player;


# virtual methods
.method public zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;->zzawa:Lcom/google/android/gms/games/Player;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;->zza(Lcom/google/android/gms/games/Player;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;->zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V

    return-void
.end method
