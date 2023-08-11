.class public Lcom/google/android/gms/drive/internal/OnContentsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzakR:Lcom/google/android/gms/drive/Contents;

.field final zzalX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzakR:Lcom/google/android/gms/drive/Contents;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzalX:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaw;->zza(Lcom/google/android/gms/drive/internal/OnContentsResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrv()Lcom/google/android/gms/drive/Contents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzakR:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public zzrw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzalX:Z

    return v0
.end method
