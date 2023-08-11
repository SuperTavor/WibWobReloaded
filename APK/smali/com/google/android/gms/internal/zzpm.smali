.class public Lcom/google/android/gms/internal/zzpm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/bootstrap/zza;


# static fields
.field public static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field public static final zzRl:Lcom/google/android/gms/common/api/Api$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpm;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzpm$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpm$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpm;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
