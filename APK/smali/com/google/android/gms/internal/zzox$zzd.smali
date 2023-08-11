.class public final Lcom/google/android/gms/internal/zzox$zzd;
.super Lcom/google/android/gms/internal/zzry;


# instance fields
.field public zzaDb:Z

.field public zzaDc:J

.field public zzaDd:D

.field public zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

.field public zzagS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzox$zzd;->zzwi()Lcom/google/android/gms/internal/zzox$zzd;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzox$zzd;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzox$zzd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzox$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

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

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzox$zzc;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method protected zzB()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zza(ID)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzox$zzd;->zzt(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzox$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzt(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzox$zzd;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzox$zzd;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzox$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzox$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x21 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public zzwi()Lcom/google/android/gms/internal/zzox$zzd;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDb:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDc:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDd:D

    iput-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzox$zzd;->zzbiv:I

    return-object p0
.end method
