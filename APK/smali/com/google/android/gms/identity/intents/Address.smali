.class public final Lcom/google/android/gms/identity/intents/Address;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field private static final zzRl:Lcom/google/android/gms/common/api/Api$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/Address;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/identity/intents/Address$1;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/Address$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/Address;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Address.API"

    sget-object v2, Lcom/google/android/gms/identity/intents/Address;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/identity/intents/Address;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/identity/intents/Address;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestUserAddress(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/identity/intents/Address$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/identity/intents/Address$2;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    return-void
.end method
