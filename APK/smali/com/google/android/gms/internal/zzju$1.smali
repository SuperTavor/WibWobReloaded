.class Lcom/google/android/gms/internal/zzju$1;
.super Lcom/google/android/gms/internal/zzju$zzc;


# instance fields
.field final synthetic zzRc:Ljava/lang/String;

.field final synthetic zzRd:[Lcom/google/android/gms/appdatasearch/UsageInfo;

.field final synthetic zzRe:Lcom/google/android/gms/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzju$1;->zzRe:Lcom/google/android/gms/internal/zzju;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzju$1;->zzRc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzju$1;->zzRd:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzju$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzjp;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzju$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzju$zzd;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju$1;->zzRc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$1;->zzRd:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjq;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    return-void
.end method
