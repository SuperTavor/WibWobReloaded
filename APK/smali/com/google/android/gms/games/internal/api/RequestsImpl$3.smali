.class Lcom/google/android/gms/games/internal/api/RequestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# instance fields
.field final synthetic zzaxo:I

.field final synthetic zzayi:Lcom/google/android/gms/games/internal/api/RequestsImpl;

.field final synthetic zzayj:I

.field final synthetic zzayk:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzayi:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzayj:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzayk:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaxo:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzayj:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzayk:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaxo:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;III)V

    return-void
.end method
