.class public interface abstract Lcom/google/android/gms/common/data/DataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Ljava/lang/Iterable;


# virtual methods
.method public abstract close()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public abstract getCount()I
.end method

.method public abstract isClosed()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract release()V
.end method

.method public abstract singleRefIterator()Ljava/util/Iterator;
.end method

.method public abstract zzor()Landroid/os/Bundle;
.end method
