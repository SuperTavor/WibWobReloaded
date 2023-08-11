.class final Ltv/superawesome/lib/samodelspace/saad/SAMedia$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAMedia$1;->createFromParcel(Landroid/os/Parcel;)Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/superawesome/lib/samodelspace/saad/SAMedia;
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAMedia$1;->newArray(I)[Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/superawesome/lib/samodelspace/saad/SAMedia;
    .locals 1

    new-array v0, p1, [Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    return-object v0
.end method
