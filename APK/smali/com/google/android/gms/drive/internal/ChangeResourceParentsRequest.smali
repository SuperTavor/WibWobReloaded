.class public Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzajY:Lcom/google/android/gms/drive/DriveId;

.field final zzajZ:Ljava/util/List;

.field final zzaka:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;->zzajY:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;->zzajZ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;->zzaka:Ljava/util/List;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzf;->zza(Lcom/google/android/gms/drive/internal/ChangeResourceParentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
