.class Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private file:Ljava/lang/String;

.field private index:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->index:I

    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->compareTo(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;)I
    .locals 2

    iget v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->index:I

    iget v1, p1, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->index:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->index:I

    iget v1, p1, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->index:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->file:Ljava/lang/String;

    return-object v0
.end method
