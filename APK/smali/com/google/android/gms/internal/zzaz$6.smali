.class Lcom/google/android/gms/internal/zzaz$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# instance fields
.field final synthetic zzrw:Lcom/google/android/gms/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaz$6;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz$6;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaz;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz$6;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzaz;->zza(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0
.end method
