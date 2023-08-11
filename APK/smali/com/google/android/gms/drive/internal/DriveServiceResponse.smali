.class public Lcom/google/android/gms/drive/internal/DriveServiceResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzals:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->zzals:Landroid/os/IBinder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzad;->zza(Lcom/google/android/gms/drive/internal/DriveServiceResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrr()Lcom/google/android/gms/common/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->zzals:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzq$zza;->zzaI(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    return-object v0
.end method
