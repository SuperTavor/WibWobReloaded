.class Lcom/google/android/gms/games/internal/api/QuestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzayc:[Ljava/lang/String;

.field final synthetic zzayd:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zzawT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zzayd:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zzawR:Z

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zzayc:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method
