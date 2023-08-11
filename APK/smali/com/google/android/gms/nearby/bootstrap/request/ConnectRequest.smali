.class public Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final timeoutMillis:J

.field final versionCode:I

.field private final zzaPq:B

.field private final zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

.field private final zzaPs:Lcom/google/android/gms/internal/zzpn;

.field private final zzaPt:Lcom/google/android/gms/internal/zzpo;

.field private final zzaPu:Lcom/google/android/gms/internal/zzpp;

.field private final zzaPv:Ljava/lang/String;

.field private final zzaPw:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/bootstrap/Device;Ljava/lang/String;Ljava/lang/String;BJLjava/lang/String;BLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/bootstrap/Device;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->name:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->description:Ljava/lang/String;

    iput-byte p5, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPq:B

    iput-wide p6, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->timeoutMillis:J

    iput-byte p9, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPw:B

    iput-object p8, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPv:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p10}, Lcom/google/android/gms/internal/zzpn$zza;->zzdc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPs:Lcom/google/android/gms/internal/zzpn;

    invoke-static {p11}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p11}, Lcom/google/android/gms/internal/zzpo$zza;->zzdd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPt:Lcom/google/android/gms/internal/zzpo;

    invoke-static {p12}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/google/android/gms/internal/zzpp$zza;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPu:Lcom/google/android/gms/internal/zzpp;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPv:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAG()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPq:B

    return v0
.end method

.method public zzAI()Lcom/google/android/gms/nearby/bootstrap/Device;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

    return-object v0
.end method

.method public zzAJ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->timeoutMillis:J

    return-wide v0
.end method

.method public zzAK()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPw:B

    return v0
.end method

.method public zzAL()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPs:Lcom/google/android/gms/internal/zzpn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPs:Lcom/google/android/gms/internal/zzpn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzAM()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPt:Lcom/google/android/gms/internal/zzpo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPt:Lcom/google/android/gms/internal/zzpo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzsO()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPu:Lcom/google/android/gms/internal/zzpp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->zzaPu:Lcom/google/android/gms/internal/zzpp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
