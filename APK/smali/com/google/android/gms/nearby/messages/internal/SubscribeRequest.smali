.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field public final zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

.field public final zzaQZ:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzaQe:Ljava/lang/String;

.field public final zzaQf:Z

.field public final zzaRa:Ljava/lang/String;

.field public final zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

.field public final zzaRf:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field public final zzaRg:Landroid/app/PendingIntent;

.field public final zzaRh:I

.field public final zzaRi:[B

.field public final zzaRj:Lcom/google/android/gms/nearby/messages/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzb$zza;->zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQZ:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRf:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRg:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRh:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQe:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRa:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRi:[B

    iput-boolean p11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQf:Z

    if-nez p12, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRj:Lcom/google/android/gms/nearby/messages/internal/zzg;

    return-void

    :cond_0
    invoke-static {p12}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzg;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;)V
    .locals 13

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzp;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzBd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaQG:Lcom/google/android/gms/nearby/messages/internal/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzBg()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRe:Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzBh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRj:Lcom/google/android/gms/nearby/messages/internal/zzg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaRj:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
