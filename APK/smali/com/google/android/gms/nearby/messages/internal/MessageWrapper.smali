.class public Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/nearby/messages/internal/zzi;


# instance fields
.field final mVersionCode:I

.field public final zzaQH:Lcom/google/android/gms/nearby/messages/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->CREATOR:Lcom/google/android/gms/nearby/messages/internal/zzi;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/Message;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaQH:Lcom/google/android/gms/nearby/messages/Message;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;-><init>(ILcom/google/android/gms/nearby/messages/Message;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->CREATOR:Lcom/google/android/gms/nearby/messages/internal/zzi;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaQH:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaQH:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaQH:Lcom/google/android/gms/nearby/messages/Message;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->CREATOR:Lcom/google/android/gms/nearby/messages/internal/zzi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzi;->zza(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/Parcel;I)V

    return-void
.end method
