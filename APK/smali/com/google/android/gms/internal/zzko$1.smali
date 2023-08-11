.class Lcom/google/android/gms/internal/zzko$1;
.super Lcom/google/android/gms/internal/zzko$zzc;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzko$zzc;-><init>(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzko;->zzc(Lcom/google/android/gms/internal/zzko;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzko;->zzb(Lcom/google/android/gms/internal/zzko;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzko;->getNamespace()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzko$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzko$1$1;-><init>(Lcom/google/android/gms/internal/zzko$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzko;->zzd(Lcom/google/android/gms/internal/zzko;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzko;->zze(Lcom/google/android/gms/internal/zzko;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$1;->zzXV:Lcom/google/android/gms/internal/zzko;

    const/16 v1, 0x44c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzko$1;->zzmG()Lcom/google/android/gms/cast/internal/zzo;

    move-result-object v2

    invoke-static {v0, v4, v1, v4, v2}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzko;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzo;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzko$1;->zzmG()Lcom/google/android/gms/cast/internal/zzo;

    move-result-object v0

    const-wide/16 v2, -0x1

    const/16 v1, 0x8

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/cast/internal/zzo;->zza(JILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
