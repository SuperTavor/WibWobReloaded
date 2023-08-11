.class abstract Lcom/google/android/gms/nearby/messages/internal/zzj$zze;
.super Ljava/lang/Object;


# instance fields
.field private final zzaQQ:Lcom/google/android/gms/internal/zzmi;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzmi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzaQQ:Lcom/google/android/gms/internal/zzmi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zzE(Ljava/lang/Object;)Landroid/os/IBinder;
.end method

.method zzF(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzaQQ:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzE(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzaQQ:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzmi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method zzG(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzaQQ:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
