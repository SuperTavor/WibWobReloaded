.class public final Lcom/google/android/gms/appdatasearch/zza;
.super Ljava/lang/Object;


# static fields
.field public static final zzPT:Lcom/google/android/gms/common/api/Api$zzc;

.field private static final zzPU:Lcom/google/android/gms/common/api/Api$zza;

.field public static final zzPV:Lcom/google/android/gms/common/api/Api;

.field public static final zzPW:Lcom/google/android/gms/appdatasearch/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPT:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/appdatasearch/zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPU:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "AppDataSearch.LIGHTWEIGHT_API"

    sget-object v2, Lcom/google/android/gms/appdatasearch/zza;->zzPU:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/appdatasearch/zza;->zzPT:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPV:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzju;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPW:Lcom/google/android/gms/appdatasearch/zzk;

    return-void
.end method
