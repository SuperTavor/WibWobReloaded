.class public final Lcom/google/android/gms/internal/zzpk$zzb;
.super Lcom/google/android/gms/internal/zzse;


# static fields
.field private static volatile zzaOG:[Lcom/google/android/gms/internal/zzpk$zzb;


# instance fields
.field public name:Ljava/lang/String;

.field public zzaOB:Ljava/lang/Float;

.field public zzaOH:Ljava/lang/Long;

.field public zzagS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzse;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk$zzb;->zzAA()Lcom/google/android/gms/internal/zzpk$zzb;

    return-void
.end method

.method public static zzAz()[Lcom/google/android/gms/internal/zzpk$zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOG:[Lcom/google/android/gms/internal/zzpk$zzb;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzsc;->zzbiu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOG:[Lcom/google/android/gms/internal/zzpk$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzpk$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOG:[Lcom/google/android/gms/internal/zzpk$zzb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOG:[Lcom/google/android/gms/internal/zzpk$zzb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzpk$zzb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzpk$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public zzAA()Lcom/google/android/gms/internal/zzpk$zzb;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzbiv:I

    return-object p0
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzse;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IF)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpk$zzb;->zzv(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzpk$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzpk$zzb;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzb(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzagS:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOH:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpk$zzb;->zzaOB:Ljava/lang/Float;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method
