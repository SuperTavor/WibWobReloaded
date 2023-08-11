.class public final Lcom/google/android/gms/nearby/Nearby;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

.field public static final Connections:Lcom/google/android/gms/nearby/connection/Connections;

.field public static final MESSAGES_API:Lcom/google/android/gms/common/api/Api;

.field public static final Messages:Lcom/google/android/gms/nearby/messages/Messages;

.field public static final zzaPj:Lcom/google/android/gms/nearby/messages/zzc;

.field public static final zzaPk:Lcom/google/android/gms/common/api/Api;

.field public static final zzaPl:Lcom/google/android/gms/nearby/sharing/zzd;

.field public static final zzaPm:Lcom/google/android/gms/nearby/sharing/zze;

.field public static final zzaPn:Lcom/google/android/gms/common/api/Api;

.field public static final zzaPo:Lcom/google/android/gms/nearby/bootstrap/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.CONNECTIONS_API"

    sget-object v2, Lcom/google/android/gms/internal/zzpu;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzpu;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpu;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Connections:Lcom/google/android/gms/nearby/connection/Connections;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.MESSAGES_API"

    sget-object v2, Lcom/google/android/gms/nearby/messages/internal/zzk;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/messages/internal/zzk;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Messages:Lcom/google/android/gms/nearby/messages/Messages;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPj:Lcom/google/android/gms/nearby/messages/zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.SHARING_API"

    sget-object v2, Lcom/google/android/gms/nearby/sharing/internal/zzh;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/sharing/internal/zzh;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPk:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/nearby/sharing/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPl:Lcom/google/android/gms/nearby/sharing/zzd;

    new-instance v0, Lcom/google/android/gms/nearby/sharing/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPm:Lcom/google/android/gms/nearby/sharing/zze;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.BOOTSTRAP_API"

    sget-object v2, Lcom/google/android/gms/internal/zzpm;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzpm;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPn:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpm;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzaPo:Lcom/google/android/gms/nearby/bootstrap/zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
