.class Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzays:Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;->zzays:Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestIds()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestOutcome(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
