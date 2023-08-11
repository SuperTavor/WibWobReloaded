.class final Lcom/google/android/gms/internal/zzpz$3;
.super Lcom/google/android/gms/internal/zzpx$zza;


# instance fields
.field final synthetic zzaRA:Lcom/google/android/gms/internal/zzpx;

.field final synthetic zzaRy:Landroid/net/Uri;

.field final synthetic zzry:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzpx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpz$3;->zzry:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpz$3;->zzaRy:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpz$3;->zzaRA:Lcom/google/android/gms/internal/zzpx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$3;->zzry:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$3;->zzaRy:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpz;->zzb(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$3;->zzaRA:Lcom/google/android/gms/internal/zzpx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpx;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
