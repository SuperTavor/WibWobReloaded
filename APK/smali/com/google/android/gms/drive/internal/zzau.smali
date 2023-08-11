.class public final Lcom/google/android/gms/drive/internal/zzau;
.super Lcom/google/android/gms/internal/zzry;


# instance fields
.field public zzalO:J

.field public zzalR:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzau;->zzru()Lcom/google/android/gms/drive/internal/zzau;

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/zzau;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzau;

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzau;->zzo(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/drive/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public zzo(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/drive/internal/zzau;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzau;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public zzru()Lcom/google/android/gms/drive/internal/zzau;
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalR:J

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzalO:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbiv:I

    return-object p0
.end method
