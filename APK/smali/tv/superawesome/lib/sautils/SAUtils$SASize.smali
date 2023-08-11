.class public Ltv/superawesome/lib/sautils/SAUtils$SASize;
.super Ljava/lang/Object;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->width:I

    iput v0, p0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->height:I

    iput p1, p0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->width:I

    iput p2, p0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->height:I

    return-void
.end method
