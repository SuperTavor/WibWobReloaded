.class public Lcom/google/android/gms/drive/DriveFileRange;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaiK:J

.field final zzaiL:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveFileRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/DriveFileRange;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/DriveFileRange;->zzaiK:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/DriveFileRange;->zzaiL:J

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzc;->zza(Lcom/google/android/gms/drive/DriveFileRange;Landroid/os/Parcel;I)V

    return-void
.end method
