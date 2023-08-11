.class Lcom/google/android/gms/internal/zzli$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;

.field final synthetic zzacx:Landroid/support/v4/app/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Landroid/support/v4/app/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$8;->zzacr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroid/support/v4/app/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->getSupportFragmentManager()Landroid/support/v4/app/an;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/an;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroid/support/v4/app/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Landroid/support/v4/app/ag;)Lcom/google/android/gms/internal/zzlp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli$8;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzli;->zzf(Lcom/google/android/gms/internal/zzli;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zzbp(I)V

    goto :goto_0
.end method
