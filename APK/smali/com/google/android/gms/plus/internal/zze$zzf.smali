.class final Lcom/google/android/gms/plus/internal/zze$zzf;
.super Lcom/google/android/gms/plus/internal/zza;


# instance fields
.field private final zzaFC:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zze$zzf;->zzaFC:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zzi(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zzf;->zzaFC:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
