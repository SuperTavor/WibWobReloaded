.class public final Lcom/google/android/gms/appinvite/AppInvite;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final AppInviteApi:Lcom/google/android/gms/appinvite/AppInviteApi;

.field public static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field private static final zzRl:Lcom/google/android/gms/common/api/Api$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/appinvite/AppInvite$1;

    invoke-direct {v0}, Lcom/google/android/gms/appinvite/AppInvite$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "AppInvite.API"

    sget-object v2, Lcom/google/android/gms/appinvite/AppInvite;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/appinvite/AppInvite;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjv;-><init>()V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->AppInviteApi:Lcom/google/android/gms/appinvite/AppInviteApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
