.class public Lcom/google/android/gms/nearby/messages/devices/zzd;
.super Ljava/lang/Object;


# instance fields
.field private final zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/zze;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzs([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/devices/zze;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    return-void
.end method

.method private static zzs([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "iBeacon ID must be a UUID, a major, and a minor (20 total bytes)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/devices/zzd;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/zzd;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBeaconId{proximityUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzAX()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzAY()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzAZ()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzAX()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzAX()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public zzAY()S
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzBa()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public zzAZ()S
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zzd;->zzaQy:Lcom/google/android/gms/nearby/messages/devices/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzBb()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method
