.class final Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$4;
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

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$4;->createFromParcel(Landroid/os/Parcel;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
    .locals 2

    invoke-static {}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->values()[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$4;->newArray(I)[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
    .locals 1

    new-array v0, p1, [Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    return-object v0
.end method
