.class Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawZ:I

.field final synthetic zzaxa:Ljava/lang/String;

.field final synthetic zzaxb:[Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget v2, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zzawZ:I

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zzaxa:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zzaxb:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;ILjava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method
