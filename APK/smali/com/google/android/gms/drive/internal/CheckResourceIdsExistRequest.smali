.class public Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mVersionCode:I

.field private final zzakb:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->zzakb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzg;->zza(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->zzakb:Ljava/util/List;

    return-object v0
.end method
