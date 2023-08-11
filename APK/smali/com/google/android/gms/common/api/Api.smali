.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzZM:Lcom/google/android/gms/common/api/Api$zzc;

.field private final zzaav:Lcom/google/android/gms/common/api/Api$zza;

.field private final zzaaw:Lcom/google/android/gms/common/api/Api$zze;

.field private final zzaax:Lcom/google/android/gms/common/api/Api$zzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->zzaav:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v1, p0, Lcom/google/android/gms/common/api/Api;->zzaaw:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/common/api/Api;->zzZM:Lcom/google/android/gms/common/api/Api$zzc;

    iput-object v1, p0, Lcom/google/android/gms/common/api/Api;->zzaax:Lcom/google/android/gms/common/api/Api$zzf;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public zznv()Lcom/google/android/gms/common/api/Api$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzaav:Lcom/google/android/gms/common/api/Api$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzaav:Lcom/google/android/gms/common/api/Api$zza;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zznw()Lcom/google/android/gms/common/api/Api$zze;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzaaw:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzaaw:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zznx()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzZM:Lcom/google/android/gms/common/api/Api$zzc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzZM:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzny()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzaax:Lcom/google/android/gms/common/api/Api$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
