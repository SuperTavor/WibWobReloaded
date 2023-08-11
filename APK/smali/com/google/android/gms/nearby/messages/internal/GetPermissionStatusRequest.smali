.class public Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field public final zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaQe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;->zzaQe:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zza;->zza(Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzBd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
