.class public Lcom/facebook/messenger/MessengerThreadParams;
.super Ljava/lang/Object;


# instance fields
.field public final metadata:Ljava/lang/String;

.field public final origin:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public final participants:Ljava/util/List;

.field public final threadToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/messenger/MessengerThreadParams$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/messenger/MessengerThreadParams;->threadToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/messenger/MessengerThreadParams;->metadata:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/messenger/MessengerThreadParams;->participants:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/messenger/MessengerThreadParams;->origin:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-void
.end method
