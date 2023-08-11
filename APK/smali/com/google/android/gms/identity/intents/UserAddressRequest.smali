.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mVersionCode:I

.field zzaDh:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/identity/intents/zza;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;

    new-instance v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;

    invoke-direct {v1}, Lcom/google/android/gms/identity/intents/UserAddressRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/zza;->zza(Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Parcel;I)V

    return-void
.end method
