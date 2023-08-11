.class public Lcom/google/android/gms/internal/zzqt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/search/SearchAuthApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearToken(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzqt$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleNowAuth(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzqt$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzqt$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method
