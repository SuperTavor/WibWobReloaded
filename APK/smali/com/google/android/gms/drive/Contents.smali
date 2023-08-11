.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzadS:Landroid/os/ParcelFileDescriptor;

.field final zzaiA:Lcom/google/android/gms/drive/DriveId;

.field final zzaiB:Z

.field final zzaiy:I

.field final zzaiz:I

.field final zzrW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->zzadS:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->zzaiy:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->zzaiz:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/Contents;->zzaiB:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/Contents;->zzrW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzadS:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Contents;->zzaiz:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->zzadS:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->zzadS:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Contents;->zzaiy:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzb;->zza(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->zzaiB:Z

    return v0
.end method
