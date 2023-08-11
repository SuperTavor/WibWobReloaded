.class public final Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final versionCode:I

.field public final zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaRc:Lcom/google/android/gms/nearby/messages/internal/zzf;

.field public zzaRd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzf$zza;->zzdo(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaRc:Lcom/google/android/gms/nearby/messages/internal/zzf;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaRd:Z

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Z)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzo;->zza(Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzBd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzBf()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaRc:Lcom/google/android/gms/nearby/messages/internal/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
