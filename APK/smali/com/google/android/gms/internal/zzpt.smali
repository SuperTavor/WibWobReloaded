.class public final Lcom/google/android/gms/internal/zzpt;
.super Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field private final zzavo:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzE(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzAO()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzT(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzAP()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpw;->zzAP()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzAQ()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzQ(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzAR()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzS(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop all endpoints"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt;->zzdh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;JLcom/google/android/gms/internal/zzlm;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpw;

    new-instance v2, Lcom/google/android/gms/internal/zzpt$zzg;

    invoke-direct {v2, p1, p5}, Lcom/google/android/gms/internal/zzpt$zzg;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;Ljava/lang/String;JJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzlm;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zze;

    invoke-direct {v1, p1, p6}, Lcom/google/android/gms/internal/zzpt$zze;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpw;

    new-instance v2, Lcom/google/android/gms/internal/zzpt$zzd;

    invoke-direct {v2, p1, p5, p6}, Lcom/google/android/gms/internal/zzpt$zzd;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;Ljava/lang/String;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zza;

    invoke-direct {v1, p1, p4}, Lcom/google/android/gms/internal/zzpt$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public zza([Ljava/lang/String;[B)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zza([Ljava/lang/String;[BJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t send reliable message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzb([Ljava/lang/String;[B)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzb([Ljava/lang/String;[BJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t send unreliable message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzdh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpw;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpw$zza;->zzdj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    return-object v0
.end method

.method public zzej(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzg(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t stop discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzek(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zzh(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Couldn\'t disconnect from endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method public zzp(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzpt$zzc;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpt;->zzavo:J

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpv;Ljava/lang/String;J)V

    return-void
.end method
