.class Lcom/google/android/gms/games/internal/api/RequestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;


# instance fields
.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzayl:[Ljava/lang/String;

.field final synthetic zzaym:I

.field final synthetic zzayn:[B

.field final synthetic zzayo:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zzawT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zzayl:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zzaym:I

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zzayn:[B

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->zzayo:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    return-void
.end method
