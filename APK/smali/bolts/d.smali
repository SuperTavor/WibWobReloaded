.class public Lbolts/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/util/List;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbolts/d;->a:Landroid/net/Uri;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lbolts/d;->b:Ljava/util/List;

    iput-object p3, p0, Lbolts/d;->c:Landroid/net/Uri;

    return-void
.end method
