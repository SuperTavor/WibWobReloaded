.class public Lcom/google/android/gms/internal/zzio;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzJA:Lcom/google/android/gms/internal/zzir;

.field private final zzJy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzio;->zzJy:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzir;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzJA:Lcom/google/android/gms/internal/zzir;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzJA:Lcom/google/android/gms/internal/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzir;->zzgV()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzJy:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzJy:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzJA:Lcom/google/android/gms/internal/zzir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzir;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
