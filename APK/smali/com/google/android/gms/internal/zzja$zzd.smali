.class Lcom/google/android/gms/internal/zzja$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# instance fields
.field final synthetic zzKi:Lcom/google/android/gms/internal/zzja;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zzd;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzja$zzd;-><init>(Lcom/google/android/gms/internal/zzja;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzd;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzd;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzb(Lcom/google/android/gms/internal/zzja;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cancel"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzd;->zzKi:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzc(Lcom/google/android/gms/internal/zzja;)V

    goto :goto_0
.end method
