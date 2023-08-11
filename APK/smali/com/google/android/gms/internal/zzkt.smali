.class public final Lcom/google/android/gms/internal/zzkt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/PlayerInfo;


# instance fields
.field private final zzWw:I

.field private final zzYf:Ljava/lang/String;

.field private final zzYv:Lorg/json/JSONObject;

.field private final zzYw:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkt;->zzYf:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzkt;->zzWw:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkt;->zzYv:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzkt;->zzYw:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/cast/games/PlayerInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/games/PlayerInfo;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzkt;->zzYw:Z

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzkt;->zzWw:I

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkt;->zzYf:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkt;->zzYv:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzmu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPlayerData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkt;->zzYv:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkt;->zzYf:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkt;->zzWw:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkt;->zzYf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzkt;->zzWw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkt;->zzYv:Lorg/json/JSONObject;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzkt;->zzYw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkt;->zzWw:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isControllable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkt;->zzYw:Z

    return v0
.end method
