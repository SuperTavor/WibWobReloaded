.class public Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
.super Ljava/lang/Object;


# instance fields
.field private zzTm:Ljava/util/Set;

.field private zzaaV:Z


# direct methods
.method private constructor <init>(ZLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzaaV:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzTm:Ljava/util/Set;

    return-void
.end method

.method public static newAuthNotRequiredResult()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;-><init>(ZLjava/util/Set;)V

    return-object v0
.end method

.method public static newAuthRequiredResult(Ljava/util/Set;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
    .locals 3

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "A non-empty scope set is required if further auth is needed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;-><init>(ZLjava/util/Set;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zznD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzaaV:Z

    return v0
.end method

.method public zznE()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzTm:Ljava/util/Set;

    return-object v0
.end method
