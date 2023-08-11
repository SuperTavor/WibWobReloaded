.class Lcom/google/android/gms/internal/zzko$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzYa:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzko;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$4;->zzXV:Lcom/google/android/gms/internal/zzko;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzko$4;->zzYa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko$4;->zzo(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$4;->zzXV:Lcom/google/android/gms/internal/zzko;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzko$4;->zzYa:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzko;->zzb(JI)V

    :cond_0
    return-void
.end method
