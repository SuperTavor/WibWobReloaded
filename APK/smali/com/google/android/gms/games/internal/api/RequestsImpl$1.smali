.class Lcom/google/android/gms/games/internal/api/RequestsImpl$1;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;


# instance fields
.field final synthetic zzayh:[Ljava/lang/String;

.field final synthetic zzayi:Lcom/google/android/gms/games/internal/api/RequestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;->zzayi:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;->zzayh:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;->zzayh:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;[Ljava/lang/String;)V

    return-void
.end method
