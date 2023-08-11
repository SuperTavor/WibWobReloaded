.class public abstract Lcom/google/android/gms/internal/zzko$zza;
.super Lcom/google/android/gms/internal/zzko$zzb;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzko;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$zza;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzko$zzb;-><init>(Lcom/google/android/gms/internal/zzko;)V

    new-instance v0, Lcom/google/android/gms/internal/zzko$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzko$zza$1;-><init>(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzko;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko$zza;->zzXu:Lcom/google/android/gms/cast/internal/zzo;

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko$zza;->zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object v0

    return-object v0
.end method

.method public zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzko$zze;

    const-wide/16 v4, -0x1

    move-object v2, p1

    move-object v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzko$zze;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v1
.end method
