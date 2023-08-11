.class public Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mName:Ljava/lang/String;

.field final mVersionCode:I

.field final zzaov:Z

.field final zzaow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->zzaov:Z

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->zzaow:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/zza;->zza(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
