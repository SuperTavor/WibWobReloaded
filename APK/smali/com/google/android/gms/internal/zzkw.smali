.class public Lcom/google/android/gms/internal/zzkw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayApi;


# static fields
.field private static final zzVo:Lcom/google/android/gms/cast/internal/zzl;


# instance fields
.field private zzZM:Lcom/google/android/gms/common/api/Api$zzc;

.field private zzZN:Landroid/hardware/display/VirtualDisplay;

.field private final zzZO:Lcom/google/android/gms/internal/zzla;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzkw;->zzVo:Lcom/google/android/gms/cast/internal/zzl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api$zzc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkw$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkw$1;-><init>(Lcom/google/android/gms/internal/zzkw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZO:Lcom/google/android/gms/internal/zzla;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw;->zzZM:Lcom/google/android/gms/common/api/Api$zzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkw;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;->zznl()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkw;)Lcom/google/android/gms/internal/zzla;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZO:Lcom/google/android/gms/internal/zzla;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkw;)Lcom/google/android/gms/common/api/Api$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZM:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzkw;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method private zznl()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzkw;->zzVo:Lcom/google/android/gms/cast/internal/zzl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzZN:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method static synthetic zznm()Lcom/google/android/gms/cast/internal/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzkw;->zzVo:Lcom/google/android/gms/cast/internal/zzl;

    return-object v0
.end method


# virtual methods
.method public startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzkw;->zzVo:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkw$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzkw$2;-><init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzkw;->zzVo:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkw$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzkw$3;-><init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method
