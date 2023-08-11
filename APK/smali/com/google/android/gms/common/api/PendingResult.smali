.class public abstract Lcom/google/android/gms/common/api/PendingResult;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract await()Lcom/google/android/gms/common/api/Result;
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
.end method

.method public abstract cancel()V
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.end method

.method public abstract setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zznF()Ljava/lang/Integer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
