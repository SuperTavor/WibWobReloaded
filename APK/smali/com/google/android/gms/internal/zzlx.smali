.class public final Lcom/google/android/gms/internal/zzlx;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field private static final zzRl:Lcom/google/android/gms/common/api/Api$zza;

.field public static final zzagw:Lcom/google/android/gms/internal/zzly;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlx;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzlx$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlx$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlx;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Common.API"

    sget-object v2, Lcom/google/android/gms/internal/zzlx;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzlx;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzlx;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzlz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlx;->zzagw:Lcom/google/android/gms/internal/zzly;

    return-void
.end method
