.class public Lcom/google/android/gms/drive/internal/OpenContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaiz:I

.field final zzakc:Lcom/google/android/gms/drive/DriveId;

.field final zzamo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->zzakc:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->zzaiz:I

    iput p4, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->zzamo:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(ILcom/google/android/gms/drive/DriveId;II)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbk;->zza(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
