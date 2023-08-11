.class abstract Lcom/google/android/gms/nearby/messages/devices/zza;
.super Ljava/lang/Object;


# static fields
.field private static final zzaQv:[C


# instance fields
.field private final zzaQw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQv:[C

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    return-void
.end method

.method static zzr([B)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    sget-object v4, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQv:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQv:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/zza;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/devices/zza;->zzr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzAW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/zza;->zzaQw:[B

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/devices/zza;->zzr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
