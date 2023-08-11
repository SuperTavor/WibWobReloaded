.class Lcom/facebook/applinks/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/l;)Lbolts/d;
    .locals 2

    invoke-virtual {p1}, Lbolts/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/d;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->then(Lbolts/l;)Lbolts/d;

    move-result-object v0

    return-object v0
.end method
