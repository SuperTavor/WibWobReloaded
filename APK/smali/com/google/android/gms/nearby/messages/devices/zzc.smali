.class Lcom/google/android/gms/nearby/messages/devices/zzc;
.super Lcom/google/android/gms/nearby/messages/devices/zza;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/devices/zzc;->zzs([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/devices/zza;-><init>([B)V

    return-void
.end method

.method private static zzs([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Bytes must be a namespace (10 bytes), or a namespace plus instance ID (16 bytes)."

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

    const-string v1, "EddystoneUidPrefix{bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/zzc;->zzAW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
