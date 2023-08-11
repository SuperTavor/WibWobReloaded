.class public Lcom/google/android/gms/drive/internal/ControlProgressRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaiA:Lcom/google/android/gms/drive/DriveId;

.field final zzakj:I

.field final zzakk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->zzakj:I

    iput p3, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->zzakk:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->zzaiA:Lcom/google/android/gms/drive/DriveId;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzj;->zza(Lcom/google/android/gms/drive/internal/ControlProgressRequest;Landroid/os/Parcel;I)V

    return-void
.end method
