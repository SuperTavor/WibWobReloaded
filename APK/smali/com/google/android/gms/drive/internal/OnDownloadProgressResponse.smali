.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final zzalZ:Ljava/util/List;


# instance fields
.field final mVersionCode:I

.field final zzama:J

.field final zzamb:J

.field final zzamc:Ljava/util/List;

.field final zzys:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzalZ:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/drive/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzama:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzamb:J

    iput p6, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzys:I

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzamc:Ljava/util/List;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzay;->zza(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzry()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzama:J

    return-wide v0
.end method

.method public zzrz()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->zzamb:J

    return-wide v0
.end method
