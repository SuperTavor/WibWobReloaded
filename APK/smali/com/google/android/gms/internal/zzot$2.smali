.class Lcom/google/android/gms/internal/zzot$2;
.super Lcom/google/android/gms/internal/zzns$zza;


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzarQ:Lcom/google/android/gms/internal/zzot;

.field final synthetic zzarR:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzot$2;->zzarQ:Lcom/google/android/gms/internal/zzot;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzot$2;->zzarR:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzns$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->zzU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$2;->zza(Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/zzot$zzb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzot$zzb;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzot$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzod;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionStopRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzot$2;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzot$2;->zzarR:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/SessionStopRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzoi;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/fitness/request/SessionStopRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$2;->zzN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method
