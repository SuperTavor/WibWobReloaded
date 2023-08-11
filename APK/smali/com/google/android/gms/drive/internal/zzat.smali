.class public final Lcom/google/android/gms/drive/internal/zzat;
.super Lcom/google/android/gms/internal/zzry;


# instance fields
.field public versionCode:I

.field public zzalO:J

.field public zzalQ:Ljava/lang/String;

.field public zzalR:J

.field public zzalS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzat;->zzrt()Lcom/google/android/gms/drive/internal/zzat;

    return-void
.end method

.method public static zzl([B)Lcom/google/android/gms/drive/internal/zzat;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzat;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzse;[B)Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzat;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/zzat;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzat;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzat;->zzn(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/drive/internal/zzat;

    move-result-object v0

    return-object v0
.end method

.method public zzn(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/drive/internal/zzat;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzat;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public zzrt()Lcom/google/android/gms/drive/internal/zzat;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalQ:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalR:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalO:J

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzalS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbiv:I

    return-object p0
.end method
