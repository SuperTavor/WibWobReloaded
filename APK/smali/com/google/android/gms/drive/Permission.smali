.class public Lcom/google/android/gms/drive/Permission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field private zzajj:Ljava/lang/String;

.field private zzajk:I

.field private zzajl:Ljava/lang/String;

.field private zzajm:Ljava/lang/String;

.field private zzajn:I

.field private zzajo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/Permission;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Permission;->zzajj:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    iput-object p4, p0, Lcom/google/android/gms/drive/Permission;->zzajl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/Permission;->zzajm:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/Permission;->zzajn:I

    iput-boolean p7, p0, Lcom/google/android/gms/drive/Permission;->zzajo:Z

    return-void
.end method

.method public static zzcm(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzcn(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/Permission;

    iget-object v2, p0, Lcom/google/android/gms/drive/Permission;->zzajj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/Permission;->zzajj:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    iget v3, p1, Lcom/google/android/gms/drive/Permission;->zzajk:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzajn:I

    iget v3, p1, Lcom/google/android/gms/drive/Permission;->zzajn:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/Permission;->zzajo:Z

    iget-boolean v3, p1, Lcom/google/android/gms/drive/Permission;->zzajo:Z

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzajn:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzcn(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzajn:I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/Permission;->zzajj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/drive/Permission;->zzajn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/Permission;->zzajo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzi;->zza(Lcom/google/android/gms/drive/Permission;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqY()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzcm(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzajj:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzqZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    invoke-static {v0}, Lcom/google/android/gms/drive/Permission;->zzcm(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/Permission;->zzajk:I

    goto :goto_0
.end method

.method public zzra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzajl:Ljava/lang/String;

    return-object v0
.end method

.method public zzrb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/Permission;->zzajm:Ljava/lang/String;

    return-object v0
.end method

.method public zzrc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/Permission;->zzajo:Z

    return v0
.end method
