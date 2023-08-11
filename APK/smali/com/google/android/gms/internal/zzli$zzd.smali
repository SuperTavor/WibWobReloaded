.class Lcom/google/android/gms/internal/zzli$zzd;
.super Lcom/google/android/gms/internal/zzll;


# instance fields
.field private zzacC:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli$zzd;->zzacC:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzoi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zzd;->zzacC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzli;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzd(Lcom/google/android/gms/internal/zzli;)V

    goto :goto_0
.end method
