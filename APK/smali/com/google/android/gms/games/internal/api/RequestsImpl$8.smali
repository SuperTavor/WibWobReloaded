.class Lcom/google/android/gms/games/internal/api/RequestsImpl$8;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;


# instance fields
.field final synthetic zzayd:Ljava/lang/String;

.field final synthetic zzayk:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->zzayd:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->zzayk:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzf(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V

    return-void
.end method
