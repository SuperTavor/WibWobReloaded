.class Lcom/google/android/gms/drive/internal/zzv$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field final synthetic zzakU:Lcom/google/android/gms/drive/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzv$3;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzv$3;->zzo(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DriveContentsImpl"

    const-string v1, "Error discarding contents"

    invoke-static {v0, v1}, Lcom/google/android/gms/drive/internal/zzz;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DriveContentsImpl"

    const-string v1, "Contents discarded"

    invoke-static {v0, v1}, Lcom/google/android/gms/drive/internal/zzz;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
