.class Lcom/google/android/gms/nearby/messages/devices/zze;
.super Lcom/google/android/gms/nearby/messages/devices/zza;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzs([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/devices/zza;-><init>([B)V

    return-void
.end method

.method private static zzs([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Prefix must be a UUID, a UUID and a major, or a UUID, a major, and a minor."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBeaconIdPrefix{proximityUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzAX()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzBa()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->zzBb()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzAX()Ljava/util/UUID;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method public zzBa()Ljava/lang/Short;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzBb()Ljava/lang/Short;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zze;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x12

    array-length v2, v0

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
