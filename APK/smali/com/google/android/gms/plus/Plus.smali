.class public final Lcom/google/android/gms/plus/Plus;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final AccountApi:Lcom/google/android/gms/plus/Account;

.field public static final MomentsApi:Lcom/google/android/gms/plus/Moments;

.field public static final PeopleApi:Lcom/google/android/gms/plus/People;

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

.field public static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field static final zzRl:Lcom/google/android/gms/common/api/Api$zza;

.field public static final zzaSc:Lcom/google/android/gms/plus/zzb;

.field public static final zzaSd:Lcom/google/android/gms/plus/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/plus/Plus$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Plus.API"

    sget-object v2, Lcom/google/android/gms/plus/Plus;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/plus/Plus;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqh;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->MomentsApi:Lcom/google/android/gms/plus/Moments;

    new-instance v0, Lcom/google/android/gms/internal/zzqi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqi;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    new-instance v0, Lcom/google/android/gms/internal/zzqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    new-instance v0, Lcom/google/android/gms/internal/zzqg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqg;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzaSc:Lcom/google/android/gms/plus/zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzaSd:Lcom/google/android/gms/plus/zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/plus/Plus;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zze;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
