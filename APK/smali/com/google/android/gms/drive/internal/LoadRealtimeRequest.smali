.class public Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaiA:Lcom/google/android/gms/drive/DriveId;

.field final zzalI:Z

.field final zzalJ:Ljava/util/List;

.field final zzalK:Z

.field final zzalL:Lcom/google/android/gms/common/data/DataHolder;

.field final zzalM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ZLjava/util/List;ZLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzalI:Z

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzalJ:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzalK:Z

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzalL:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->zzalM:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzar;->zza(Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;Landroid/os/Parcel;I)V

    return-void
.end method
