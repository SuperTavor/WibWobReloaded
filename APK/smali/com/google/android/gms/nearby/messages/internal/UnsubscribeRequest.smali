.class public final Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field public final zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaQe:Ljava/lang/String;

.field public final zzaRa:Ljava/lang/String;

.field public final zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

.field public final zzaRg:Landroid/app/PendingIntent;

.field public final zzaRh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzb$zza;->zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRg:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRh:I

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaQe:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRa:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzr;->zza(Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzBd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzBg()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
