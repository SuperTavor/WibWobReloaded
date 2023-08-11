.class public final Lcom/google/android/gms/internal/zzrt$zza;
.super Lcom/google/android/gms/internal/zzry;


# static fields
.field private static volatile zzbhC:[Lcom/google/android/gms/internal/zzrt$zza;


# instance fields
.field public name:Ljava/lang/String;

.field public zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt$zza;->zzFj()Lcom/google/android/gms/internal/zzrt$zza;

    return-void
.end method

.method public static zzFi()[Lcom/google/android/gms/internal/zzrt$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhC:[Lcom/google/android/gms/internal/zzrt$zza;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzsc;->zzbiu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhC:[Lcom/google/android/gms/internal/zzrt$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzrt$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhC:[Lcom/google/android/gms/internal/zzrt$zza;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhC:[Lcom/google/android/gms/internal/zzrt$zza;

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzrt$zza;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzrt$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrt$zza$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrt$zza$zza;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method protected zzB()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public zzB(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrt$zza;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrt$zza;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrt$zza$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public zzFj()Lcom/google/android/gms/internal/zzrt$zza;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbiv:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt$zza;->zzbhD:Lcom/google/android/gms/internal/zzrt$zza$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrt$zza;->zzB(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrt$zza;

    move-result-object v0

    return-object v0
.end method
