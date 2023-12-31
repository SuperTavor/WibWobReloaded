.class public final Lcom/google/android/gms/internal/zzln;
.super Lcom/google/android/gms/common/api/OptionalPendingResult;


# instance fields
.field private final zzacI:Lcom/google/android/gms/internal/zzlc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/OptionalPendingResult;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzlc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OptionalPendingResult can only wrap PendingResults generated by an API call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzlc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzlc;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->cancel()V

    return-void
.end method

.method public get()Lcom/google/android/gms/common/api/Result;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzln;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzln;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not available. Check that isDone() returns true before calling get()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v0

    return v0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlc;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzlc;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlc;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-void
.end method

.method public zznF()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzln;->zzacI:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zznF()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
