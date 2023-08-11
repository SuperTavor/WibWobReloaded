.class public abstract Lcom/google/android/gms/internal/zzpq$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzpq;


# direct methods
.method public static zzdf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpq;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzpq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzpq;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzpq$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpq$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzg;->zzfI(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzh;->zzfJ(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zze;->zzfG(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzc;->zzfE(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zza;->zzfC(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzd;->zzfF(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzf;->zzfH(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzb;->zzfD(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq$zza;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpp$zza;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpq$zza;->zza(Lcom/google/android/gms/internal/zzpp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
