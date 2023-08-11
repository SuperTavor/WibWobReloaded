.class Lcom/google/android/gms/internal/zzko$3;
.super Lcom/google/android/gms/internal/zzko$zza;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzXY:Ljava/lang/String;

.field final synthetic zzXZ:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzko;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$3;->zzXV:Lcom/google/android/gms/internal/zzko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzko$3;->zzXY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzko$3;->zzXZ:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzko$zza;-><init>(Lcom/google/android/gms/internal/zzko;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$3;->zzXV:Lcom/google/android/gms/internal/zzko;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzko$3;->zzXY:Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzko$3;->zzXZ:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzko$3;->zzmG()Lcom/google/android/gms/cast/internal/zzo;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/android/gms/internal/zzko;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzo;)V

    return-void
.end method
