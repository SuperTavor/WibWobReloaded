.class public final Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field public final zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaQY:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

.field public final zzaQe:Ljava/lang/String;

.field public final zzaRa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaQY:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaQe:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaRa:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;-><init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzq;->zza(Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzBd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
