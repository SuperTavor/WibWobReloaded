.class Lcom/google/android/gms/games/internal/api/RequestsImpl$7;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# instance fields
.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzaxo:I

.field final synthetic zzayd:Ljava/lang/String;

.field final synthetic zzayj:I

.field final synthetic zzayk:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzawT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzayd:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzayj:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzayk:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzaxo:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
