.class public Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;


# instance fields
.field final versionCode:I

.field private final zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

.field private final zzaPu:Lcom/google/android/gms/internal/zzpp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/bootstrap/Device;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/bootstrap/Device;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzpp$zza;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->zzaPu:Lcom/google/android/gms/internal/zzpp;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzd;->zza(Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAI()Lcom/google/android/gms/nearby/bootstrap/Device;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->zzaPr:Lcom/google/android/gms/nearby/bootstrap/Device;

    return-object v0
.end method

.method public zzsO()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->zzaPu:Lcom/google/android/gms/internal/zzpp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
