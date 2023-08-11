.class public final Lcom/google/android/gms/internal/zzrt;
.super Lcom/google/android/gms/internal/zzry;


# instance fields
.field public zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrt;->zzFh()Lcom/google/android/gms/internal/zzrt;

    return-void
.end method

.method public static zzy([B)Lcom/google/android/gms/internal/zzrt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrt;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzse;[B)Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrt;

    return-object v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzrt;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzrt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zzA(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrt;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrt;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzrt$zza;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzrt$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzrt$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzrt$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzrt$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public zzFh()Lcom/google/android/gms/internal/zzrt;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzrt$zza;->zzFi()[Lcom/google/android/gms/internal/zzrt$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbiv:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrt;->zzbhB:[Lcom/google/android/gms/internal/zzrt$zza;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrt;->zzA(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrt;

    move-result-object v0

    return-object v0
.end method
