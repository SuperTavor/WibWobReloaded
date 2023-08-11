.class public Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaQB:I

.field final zzaQC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/devices/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->zzaQB:I

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->zzaQC:[B

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/devices/zzg;->zza(Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;Landroid/os/Parcel;I)V

    return-void
.end method
