.class public Lcom/google/android/gms/internal/zzor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/RecordingApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzor$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzor$3;-><init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzor$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzor$1;-><init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzor$2;-><init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription$zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/Subscription$zza;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzb(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzsD()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzor;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription$zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/Subscription$zza;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzb(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzsD()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzor;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzor$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzor$5;-><init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzor$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzor$4;-><init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzor;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzor;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method
