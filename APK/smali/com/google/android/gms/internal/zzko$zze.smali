.class final Lcom/google/android/gms/internal/zzko$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzYf:Ljava/lang/String;

.field private final zzYg:J

.field private final zzYh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$zze;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYf:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYg:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYh:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getExtraMessageData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYh:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYf:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzko$zze;->zzYg:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zze;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
