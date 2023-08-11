.class public Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaiX:Ljava/lang/String;

.field final zzaiY:Z

.field final zzakc:Lcom/google/android/gms/drive/DriveId;

.field final zzakd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzake:Lcom/google/android/gms/drive/Contents;

.field final zzakf:I

.field final zzakg:I

.field final zzakh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzakc:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzakd:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzake:Lcom/google/android/gms/drive/Contents;

    iput-boolean p5, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzaiY:Z

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzaiX:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzakf:I

    iput p8, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzakg:I

    iput-boolean p9, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->zzakh:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzqT()Z

    move-result v5

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzqS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzqU()I

    move-result v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;IIZ)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzh;->zza(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
